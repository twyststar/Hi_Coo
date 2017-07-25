require 'rails_helper'

describe "cannot post unless logged in" do
  it "redirects to login if guest user tries to post" do
    visit 'home#index'
    click_on 'Compose a Hi Coo'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
