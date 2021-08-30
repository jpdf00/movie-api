require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:favourites) }
    it { should have_many(:movies).through(:favourites) }
  end
end
