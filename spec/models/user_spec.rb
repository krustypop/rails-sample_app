require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @attr = { :name => "Example User", :email => "user@example.com", :admin => false }
  end

  it "should create user " do
    @usr = User.create!(@attr)
  end

  # it "should be valid" do
  #   assert @usr.valid?
  # end

end
