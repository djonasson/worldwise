require 'spec_helper'

describe Country do
  it_behaves_like "Neighbor"

  it { should have_and_belong_to_many :continents }

  it { should validate_presence_of :name }
  it { should validate_presence_of(:iso_3166_alpha2) }
  it { should validate_presence_of(:iso_3166_alpha3) }
  it { should validate_presence_of(:iso_3166_numeric3) }

  it { should validate_uniqueness_of(:name) }
  it { should validate_uniqueness_of(:iso_3166_alpha2) }
  it { should validate_uniqueness_of(:iso_3166_alpha3) }
  it { should validate_uniqueness_of(:iso_3166_numeric3) }
  it { should validate_uniqueness_of(:fips_104) }
  #it { should validate_uniqueness_of(:nato_alpha2) }
  #it { should validate_uniqueness_of(:nato_alpha3) }

  it { should ensure_length_of(:iso_3166_alpha2).is_equal_to(2) }
  it { should ensure_length_of(:iso_3166_alpha3).is_equal_to(3) }
  it { should ensure_length_of(:iso_3166_numeric3).is_equal_to(3) }
  it { should ensure_length_of(:fips_104).is_equal_to(2) }
  #it { should ensure_length_of(:nato_alpha2).is_equal_to(2) }
  #it { should ensure_length_of(:nato_alpha3).is_equal_to(3) }

  context "metadata" do
    it "should be available" do
      Country.should respond_to(:metadata)
    end

    it "should return a hash" do
      Country.metadata.should be_a(Hash)
    end

    Country::DATA_ATTRIBUTES.each do |attr|
      it "should contain a description for the :#{attr} attribute" do
        Country.metadata[attr].should_not be_nil
      end
    end
  end
end
