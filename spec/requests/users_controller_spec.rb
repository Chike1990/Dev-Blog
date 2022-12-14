require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:each) { get users_path }
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end

    it 'should render the correct text in the index template' do
      expect(response.body).to include('Here is the users/index')
    end
  end

  describe 'GET #show' do
    before(:each) { get user_path(1) }
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template(:show)
    end

    it 'should render the correct text in the show template' do
      expect(response.body).to include('User/show')
    end
  end
end
