require 'rails_helper'

RSpec.describe PagesController, type: :feature do

  describe "GET #home" do
    it "returns http success" do
      visit '/'
      expect(page).to have_http_status(:success)
    end
    it "should have Home in the title" do
      visit '/'
      expect(page).to have_title 'Home'
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      visit '/contact'
      expect(page).to have_http_status(:success)
    end
    it "should have Contact in the title" do
      visit '/contact'
      expect(page).to have_title 'Contact'
    end
  end

  describe "GET #about" do
    it "returns http success" do
      visit '/about'
      expect(page).to have_http_status(:success)
    end

    it "should have About in the title" do
      visit '/about'
      expect(page).to have_title 'About'
    end
  end

end
