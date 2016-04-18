require 'rails_helper'

describe "LayoutLinks" do

  it 'should have the right link' do
    visit root_path
    click_link "About"
    expect(page).to have_title 'About'
    click_link "Contact"
    expect(page).to have_title 'Contact'
    click_link "Sign Up"
    expect(page).to have_title 'Inscription'
    click_link "Home"
    expect(page).to have_title 'Home'
  end

end
