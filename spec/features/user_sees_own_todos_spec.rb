require 'rails_helper'
require 'capybara/rspec'

feature 'User sees their own todos' do
  scenario 'does not see other users todos' do
    Todo.create!(title: 'Buy milk', email: 'someone_else@example.com')

    sign_in_as 'someone@example.com'
    expect(page).not_to have_css '.todos li', text: 'Buy milk'

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Buy milk'
    click_on 'Submit'

    if page.has_content?('You are being redirected')
      click_on 'redirected'
    end

    expect(page).to have_css('.todos li', text: 'Buy milk')
  end
end
