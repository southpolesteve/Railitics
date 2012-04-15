require 'spec_helper'
require 'pry'
require 'uuidtools'

describe "user_tracking" do

  before(:each) do
    Railitics::Request.delete_all
  end

  it "creates one request record based on UUID" do
    visit root_path
    Railitics::Request.count.should eq(1)
  end

  it "creates request records and associates with user ID" do
    user = User.create!(email: "user@example.com", password: 'password', password_confirmation: 'password')
    visit new_user_session_path
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_button "Sign in"
    Railitics::Request.all.map(&:user_id).uniq.first.should eq(user.id)
  end



end