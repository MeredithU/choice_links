require 'spec_helper'

feature 'Creating Webpages' do
  before do
    visit '/'
    click_link 'New Link'
  end

  scenario "can create a webpage" do
    fill_in 'Name', :with => 'My Site'
    fill_in 'Link', :with => 'http://codefellows.org'
    click_button 'Create Webpage'
    page.should have_content('Your awesome link has been created.')

    webpage = Webpage.find_by_name("My Site")
    page.current_url.should == webpage_url(webpage)
    title = "My Site - Webpages - Fav Links"
    find("title").should have_content(title)
  end

  scenario "can not create a project without a name" do
    click_button 'Create Webpage'
    page.should have_content("Your awesome link hasn't been created.")
    page.should have_content("Name can't be blank")
  end
end
