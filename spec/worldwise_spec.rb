require 'spec_helper'

describe "Worldwise" do

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

  context "an instance of an ActiveRecord class calling worldwise" do
    context "create_or_update" do
      before :each do
        @tw = TestWorldwise.create_or_update id: 1, code: "Code", name: "Name", description: "Description"
        @count = TestWorldwise.count
        TestWorldwise.create_or_update "id" => @tw.id, "translations_attributes" => [{ "locale" => "en", "name" => "New Name" }]
        @tw.reload
      end
      after :each do
        TestWorldwise.delete_all
      end
      it "should update passed in fields an leave others alone" do
        @tw.code.should == "Code"
        @tw.name.should == "New Name"
        @tw.description.should == "Description"
      end
      it "should not create a new record when updating" do
        TestWorldwise.count.should == @count
      end
    end
  end

end
