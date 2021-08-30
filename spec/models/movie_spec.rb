require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Associations' do
    it { should have_many(:favourites) }
    it { should have_many(:users).through(:favourites) }
  end

  describe 'Title Validations' do
    it { should validate_presence_of(:title) }
  end

  describe 'Runtime Validations' do
    it { should validate_presence_of(:runtime) }
    it { should validate_numericality_of(:runtime) }
  end
end
