require 'rails_helper'
require 'capybara/rspec'

feature 'User sees their own todos' do
  scenario 'does not see other users todos' do
    Todo.create!(title: 'Buy milk', email: 'someone_else@example.com')

    sign_in_as 'someone@example.com'
    expect(page).not_to display_todo 'Buy milk'

    create_todo 'Buy milk'

    expect(page).to display_todo 'Buy milk'
  end
end
