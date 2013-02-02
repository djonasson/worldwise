require 'spec_helper'

describe Continent do
  it_behaves_like "Neighbor"

  it { should have_and_belong_to_many :continent_models }
  it { should have_and_belong_to_many :countries }

  it { should validate_presence_of :code }
  it { should validate_presence_of :name }

  it { should validate_uniqueness_of(:code) }
  it { should validate_uniqueness_of(:name) }
end
