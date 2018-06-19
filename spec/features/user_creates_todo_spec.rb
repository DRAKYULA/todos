require 'rails_helper'
require 'capybara/rspec'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'Buy milk'

    expect(page).to display_todo 'Buy milk'
  end
end
