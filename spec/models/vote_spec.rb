require 'rails_helper'

describe Vote do

  describe 'validations' do
    it { validate_uniqueness_of(:review).scoped_to(:user) }
  end

  describe 'associations' do
    it { should belong_to(:review) }
    it { should belong_to(:user) }
  end

end
