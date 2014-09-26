require 'rails_helper'

describe Comment do
  describe 'validations' do
    it { should validate_presence_of(:text) }
    it { should ensure_length_of(:text).is_at_least(20) }
    it { should ensure_length_of(:text).is_at_most(320) }
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:review) }
  end

  describe 'associations' do
    it { should belong_to(:review) }
    it { should belong_to(:user) }
  end

  describe '#owner?' do
    it 'should return true if user is owner' do
      comment = FactoryGirl.create(:comment)
      user = comment.user

      expect(comment.owner?(user)).to eql(true)
    end
    it 'should return false if user is not owner' do
      comment = FactoryGirl.create(:comment)
      user = FactoryGirl.create(:user)

      expect(comment.owner?(user)).to eql(false)
    end
  end
end
