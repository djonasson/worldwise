require 'spec_helper'

describe ContinentModel do
  it { should have_and_belong_to_many :continents }
  it { should validate_presence_of :code }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_uniqueness_of(:code) }
  it { should validate_uniqueness_of(:name) }
end
