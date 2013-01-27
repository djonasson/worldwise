require 'spec_helper'

describe Worldwise::ContinentModel do
  it { should have_and_belong_to_many :continents }
  it { should validate_presence_of :code }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end
