require 'rails_helper'

RSpec.describe AboutController do

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it "sample test" do
      get :index
      click_link "back"
      assert_redirected_to "/"
    end

  end


end
