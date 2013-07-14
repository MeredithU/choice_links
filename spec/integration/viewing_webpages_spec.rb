require 'spec_helper'

feature "Viewing Webpages" do
  scenario "Listing all webpages" do
    webpage = Factory.create(:webpage, :name => "My Site")
    visit '/'
    click_link 'My Site'
    page.current_url.should == webpage_url(webpage)
  end
end

