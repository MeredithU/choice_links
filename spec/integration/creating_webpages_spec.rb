require 'spec_helper'

feature 'Creating Webpages' do
  scenario "can create a webpage" do
    visit '/'
    click_link 'New Link'
    fill_in 'Name', :with => 'My Site'
    fill_in 'Link', :with => 'http://codefellows.org'
    click_button 'Create Webpage'
    page.should have_content('My awesome link has been created.')
  end
end
