require 'spec_helper'

feature "Deleting Webpages" do
  scenario "Deleting a webpage" do
    Factory(:webpage, :name => "My Site")
    visit "/"
    click_link "My Site"
    click_link "Delete Link"
    page.should have_content("Your awesome link has been deleted.")

    visit "/"
    page.should_not have_content("My Site")
  end
end
