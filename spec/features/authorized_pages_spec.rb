require 'rails_helper'

describe "cannot post unless logged in" do
  it "redirects to login if guest user tries to post" do
    visit 'home#index'
    click_on 'Compose a Hi Coo'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end

describe "User will have admin access if signed in as admin user" do
  it "shows link to admin if admin user signed in" do
    user = FactoryGirl.create(:admin)
    login_as(user)
    visit 'home#index'
    expect(page).to have_content 'Admin'
  end
end

describe "User will not have admin access not an admin" do
  it "redirects to login in if non admin tries to access dashboard" do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit 'home#index'
    visit 'http://localhost:3000/admin'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
