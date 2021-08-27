require 'rails_helper'

RSpec.describe Favourite, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:movie) }
  end

  describe 'User_id Validations' do
    it { should validate_presence_of(:user_id) }
  end

  describe 'Movie_id Validations' do
    it { should validate_presence_of(:movie_id) }
  end
end
