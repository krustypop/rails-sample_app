require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.new(name: "popo", email: "popo@example.com", admin: false,
                     password: "foobar", password_confirmation: "foobar")
  end

  it "should be valid" do
    assert @user.valid?
  end

  it "name should be present" do
    @user.name = ""
    assert !@user.valid?
  end

  it "email should be present" do
    @user.email = ""
    assert !@user.valid?
  end

  it "email should have the right format" do
    @user.email = "popo.pop@example.com"
    assert @user.valid?
  end

  it "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  it "name should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert !duplicate_user.valid?
  end

  it "email should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert !duplicate_user.valid?
  end

  it "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert !@user.valid?
  end

  it "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert !@user.valid?
  end

  it "authenticate" do
    popo = User.create(name: "popo", email: "popo@example.com", admin: false,
                     password: "foobar", password_confirmation: "foobar")
    !!popo.authenticate('foobar')
  end

end
