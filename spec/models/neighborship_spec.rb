require 'spec_helper'

describe Neighborship do
  it { should validate_presence_of :owner_id }
  it { should validate_presence_of :owner_type }
  it { should validate_presence_of :neighbor_id }
  it { should validate_presence_of :neighbor_type }

  it { should validate_uniqueness_of(:owner_id).scoped_to(:owner_type, :neighbor_id, :neighbor_type) }
end
