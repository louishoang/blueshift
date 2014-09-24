require 'rails_helper'

describe Show do

  describe 'validations' do
    it { should validate_presence_of(:name) }

    it "validates uniqueness of name" do
      FactoryGirl.build(:show).save!(validate: false)
      should validate_uniqueness_of :name
    end

    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:genre) }

  end

  describe 'associations' do
    it { should have_many(:reviews) }
    it { should belong_to(:genre) }
  end

end
