require 'rails_helper'

describe Review do

  describe 'validations' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:show) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:score) }
  end

  describe 'associations' do
    # it { should have_many(:votes) }
    # it { should have_many(:comments) }

    it { should belong_to(:user) }
    it { should belong_to(:show) }
  end

end
