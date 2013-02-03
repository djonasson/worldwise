require 'spec_helper'

describe Neighborship do
  it { should validate_presence_of :owner_id }
  it { should validate_presence_of :owner_type }
  it { should validate_presence_of :neighbor_id }
  it { should validate_presence_of :neighbor_type }

  it { should validate_uniqueness_of(:owner_id).scoped_to(:owner_type, :neighbor_id, :neighbor_type) }

  context "ActiveRecord::Base" do
    it "should respond to :worldwise" do
      ActiveRecord::Base.should respond_to :worldwise
    end
    it "should not respond to :acts_as_neighbor" do
      ActiveRecord::Base.should_not respond_to :acts_as_neighbor
    end
  end

  context "an ActiveRecord class calling worldwise" do
    it "should respond to :acts_as_neighbor" do
      TestWorldwise.should respond_to :acts_as_neighbor
    end
  end

  context "an instance of an ActiveRecord class calling worldwise and acts_as_neighbor" do
    let(:tn) { TestNeighborship.new }
    let(:tn2) { TestNeighborship.new }
    let(:tn3) { TestNeighborship.new }
    it "should respond to :neighbors" do
      tn.should respond_to :neighbors
    end
    it "should not have any neighbors before any have been added" do
      tn.neighbors.should be_empty
    end
    it "should have a neighbor after one has been added" do
      tn.neighbors << TestNeighborship.new
      tn.neighbors.should_not be_empty
    end
    it "should have two neighbors after two have been added" do
      tn.save
      tn.neighbors << [tn2, tn3]
      tn.neighbors.count.should == 2
    end
    it "should have a symetric neighbors association" do
      [tn, tn2, tn3].map(&:save)
      tn.neighbors << [tn2, tn3]
      tn2.neighbors.should include(tn)
      tn3.neighbors.should include(tn)
    end
  end

end
