require 'spec_helper'

feature "Editing Webpages" do

  before do
    Factory(:webpage, :name => "My Site")
    visit "/"
    click_link "My Site"
    click_link "Edit Link"
  end

  scenario "Updating a webpage" do
    fill_in "Name", :with => "My Site beta"
    click_button "Update Webpage"
    page.should have_content("Your awesome link has been updated.")
  end

  scenario "Updating a webpage with invalid attributes is bad" do
    fill_in "Name", :with => ""
    click_button "Update Webpage"
    page.should have_content("Your awesome link has not been updated.")
  end
end
