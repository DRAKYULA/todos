class Todo < ApplicationRecord
  def completed?
    completed_at?
  end
end
