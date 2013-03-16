class Neighborship < ActiveRecord::Base
  attr_accessible :owner_id, :owner_type, :neighbor_id, :neighbor_type

  belongs_to :owner, polymorphic: true
  belongs_to :neighbor, polymorphic: true

  validates :owner_id, presence: true, uniqueness: { scope: [:owner_type, :neighbor_id, :neighbor_type] }
  validates :owner_type, presence: true
  validates :neighbor_id, presence: true
  validates :neighbor_type, presence: true

  after_create :create_symetric_relation
  after_destroy :destroy_symetric_relation

  private

  def create_symetric_relation
    if self.class.where(owner_id: neighbor_id, owner_type: neighbor_type, neighbor_id: owner_id, neighbor_type: owner_type).empty?
      self.class.create(owner_id: neighbor_id, owner_type: neighbor_type, neighbor_id: owner_id, neighbor_type: owner_type)
    end
  end

  def destroy_symetric_relation
    self.class.where(owner_id: neighbor_id, owner_type: neighbor_type, neighbor_id: owner_id, neighbor_type: owner_type).each do |record|
      record.delete
    end
  end
end
