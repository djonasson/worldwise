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
end
