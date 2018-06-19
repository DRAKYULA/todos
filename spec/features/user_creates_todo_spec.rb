require 'rails_helper'
require 'capybara/rspec'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Buy milk'
    click_on 'Submit'

    if page.has_content?('You are being redirected')
      click_on 'redirected'
    end

    expect(page).to have_css('.todos li', text: 'Buy milk')
  end
end
