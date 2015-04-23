require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
  fixtures :photos

  let(:photo1) { photos(:one) }
  let(:photo2) { photos(:two) }

  describe "GET #index" do
    it "responds successfully", points: 5 do
      get :index
      expect(response).to be_success
    end
  end
end
