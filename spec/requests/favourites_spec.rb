require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/favourites", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Favourite. As you add validations to Favourite, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { user_id: 1, movie_id: 1 }
  }

  let(:invalid_attributes) {
    { user_id: 2, movie_id: 2 }
  }

  before(:all) do
    @user = create(:user)
    @movie = create(:movie)
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # FavouritesController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Favourite.create! valid_attributes
      get favourites_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      favourite = Favourite.create! valid_attributes
      get favourite_url(favourite), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Favourite" do
        expect {
          post favourites_url,
               params: valid_attributes, headers: valid_headers, as: :json
        }.to change(Favourite, :count).by(1)
      end

      it "renders a JSON response with the new favourite" do
        post favourites_url,
             params: valid_attributes, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Favourite" do
        expect {
          post favourites_url,
               params: invalid_attributes, as: :json
        }.to change(Favourite, :count).by(0)
      end

      it "renders a JSON response with errors for the new favourite" do
        post favourites_url,
             params: invalid_attributes, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        { user_id: 1, movie_id: 1 }
      }

      it "updates the requested favourite" do
        favourite = Favourite.create! valid_attributes
        patch favourite_url(favourite),
              params: { favourite: new_attributes }, headers: valid_headers, as: :json
        favourite.reload
        expect(response).to have_http_status(:ok)
      end

      it "renders a JSON response with the favourite" do
        favourite = Favourite.create! valid_attributes
        patch favourite_url(favourite),
              params: { favourite: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the favourite" do
        favourite = Favourite.create! valid_attributes
        patch favourite_url(favourite),
              params: invalid_attributes, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested favourite" do
      favourite = Favourite.create! valid_attributes
      expect {
        delete favourite_url(favourite), headers: valid_headers, as: :json
      }.to change(Favourite, :count).by(-1)
    end
  end
end
