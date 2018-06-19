module Features
  def create_todo(todo_title)
    click_on 'Add a new todo'
    fill_in 'Title', with: todo_title
    click_on 'Submit'

    if page.has_content?('You are being redirected')
      click_on 'redirected'
    end
  end

  def display_todo(text)
    have_css('.todos li', text: text)
  end

  def display_completed_todo(text)
    have_css('.todos li.completed', text: text)
  end
end
