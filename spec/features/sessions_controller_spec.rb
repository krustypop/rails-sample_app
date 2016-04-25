require 'rails_helper'

RSpec.describe SessionsController, :type => :feature do

  describe "GET #new" do
    it "returns http success" do
      visit '/login'
      expect(page).to have_http_status(:success)
    end
    it "login with invalid information" do
      visit '/login'
      render_template 'sessions/new'
      post login_path, session: { email: "", password: "" }
      expect(subject).to render_template 'sessions/new'
      assert_not flash.empty?
      visit '/'
      assert_not flash.empty?
    end
  end



end
