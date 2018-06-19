require 'rails_helper'
require 'capybara/rspec'

feature 'User marks todo incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo 'Buy milk'

    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).not_to display_completed_todo 'Buy milk'
    expect(page).to display_todo 'Buy milk'
  end
end