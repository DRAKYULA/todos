module Features
  def sign_in
    visit root_path
    fill_in 'Email', with: 'person@example.com'
    # fill_in 'Password', with: 'password'
    click_on 'Sign in'
  end
end
