class AddCompletedAtToTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :completed_at, :datetime
  end
end
