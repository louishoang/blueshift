require 'rails_helper'

describe Vote do

  describe 'check score' do

    it 'check review score equal to 0' do
      vote = FactoryGirl.create(:vote)
      expect(vote.review.vote_score).to eq(0)
    end

    it 'checks if upvote and update_review correspond accordingly' do
      vote = FactoryGirl.create(:vote)
      vote.score = 1
      vote.save
      vote.update_review
      expect(vote.review.vote_score).to eq(1)
    end

    it 'checks if downvote and update_review correspond accordingly' do
    vote = FactoryGirl.create(:vote)
    vote.score = -1
    vote.save
    vote.update_review
    expect(vote.review.vote_score).to eq(-1)
    end

  end

  describe 'associations' do
    it { should belong_to(:review) }
    it { should belong_to(:user) }
  end

end
