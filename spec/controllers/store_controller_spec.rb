require 'rails_helper'

describe StoreController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      visit store_path
      #should have_selector('body.store')

      expect(response).to have_http_status(:success)
    end

    it "should have h3" do
      visit store_path
      should have_css('div')
    end
  end

end
