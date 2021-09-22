
require 'rails_helper'
RSpec.describe UrlsController, type: :controller do

  describe 'Test the index action' do
  	let(:headers) { { 'ip' => '192.168.0.1' } }

    it "Renders the index page, showing two seeded urls" do
      get :index
      
      expect(response).to be_successful
      expect(assigns(:urls).length).to be > 0
      assert_equal Url.all, assigns(:urls)
      assert_equal User.first, assigns(:user)
      assert_template 'urls/index'
    end
  end

	describe 'Test the post action' do
		let(:headers) 				{ { 'ip' => '192.168.0.1' } }
		let(:invalid_params) 	{ { url: { url: 'ole.com.ar' } } }
		let(:valid_params) 		{ { url: { url: 'http://www.ole.com.ar' } } }

		it 'Post an invalid url, showing an error' do
		
			post :create, params: invalid_params

			expect(assigns(:urls).length).to eq(2)
			expect(assigns(:url).errors.full_messages.first).to match(/Url is invalid/)
		end

		it 'Post a valid url, incresing the urls by 1' do

			post :create, params: valid_params

			expect(assigns(:urls).length).to eq(3)
			expect(assigns(:url).errors.full_messages.length).to eq(0)	
		end
	end

	describe 'Test the show action' do
		let(:headers) { { 'ip' => '192.168.0.1' } }
		let(:params)	{ { id: Url.first.short_url }}

		it 'Visit a url as a user and have incremented the visits to that url by 1' do
			get :show, params: params

			expect(assigns(:user).visits.length).to eq(1)
		end 
	end

	describe 'Test the info action' do
		let(:headers) { { 'ip' => '192.168.0.1' } }
		let(:params)	{ { id: Url.first.short_url }}

		it 'Visit a url as a user and have incremented the visits to that url by 1' do
			get :show, params: params
			get :info, params: params

			expect(assigns(:url))
			expect(assigns(:url).visits.length).to eq(1)
			assert_equal Url.first, assigns(:url)
			assert_template 'urls/info'
		end 
	end
end