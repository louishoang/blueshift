require 'rails_helper'

describe User do

  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should ensure_length_of(:username).is_at_most(32) }
    it { should ensure_length_of(:username).is_at_least(6) }

  end

  describe 'associations' do
    it { should have_many(:reviews) }
    # it { should have_many(:comments).through(:reviews) }
  end

end
