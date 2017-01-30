require 'rails_helper'

RSpec.describe InfoPagesController, type: :controller do

  describe "GET routes" do 
    it "should render the about page" do
      get :about
      expect(response).to be_successful
      expect(response).to render_template(:about)
    end


    it "should render the help page" do
      get :contact
      expect(response).to be_successful
      expect(response).to render_template(:contact)
    end    

    it "should render the help page" do
      get :help
      expect(response).to be_successful
      expect(response).to render_template(:help)
    end

    it "should render the home page" do
      get :home
      expect(response).to be_successful
      expect(response).to render_template(:home)
    end 
  end
end
