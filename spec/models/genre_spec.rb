require 'rails_helper'

describe Genre do

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  #   it { should validate_includsion_of(:name).in_array(["Action", "Adventure", "Animation", "Children", "Comedy", "Documentary", "Drama", "Fantasy", "Game Show", "Home and Garden", "Mini Series", "News", "Reality", "Science Fiction", "Soap", "Special Interest", "Sport", "Talk Show", "Western"])}
  end

  describe 'associations' do
    it { should have_many(:shows) }
  end

end
