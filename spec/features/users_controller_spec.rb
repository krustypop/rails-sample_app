require 'rails_helper'

RSpec.describe UsersController, :type => :feature do

  describe "GET /users/new" do
    it "returns http success" do
      visit '/signup'
      expect(page).to have_http_status(:success)

    end
    it "should have Inscription in the title" do
      visit '/signup'
      expect(page).to have_title 'Sign Up'
    end
  end

  # before :each do
  #   User.make(:email => 'user@example.com', :password => 'password')
  # end
  #
  # it "signs me in" do
  #   visit '/sessions/new'
  #   within("#session") do
  #     fill_in 'Email', :with => 'user@example.com'
  #     fill_in 'Password', :with => 'password'
  #   end
  #   click_button 'Sign in'
  #   expect(page).to have_content 'Success'
  # end
end
