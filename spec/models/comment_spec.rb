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
    it { should belong_to(:review)}
    it { should belong_to(:user)}


  end


end
