class CompletionsController < ApplicationController
  def create
    todo.complete!
    redirect_to todos_path
  end

  def destroy
    todo.mark_incomplete!
    redirect_to todos_path
  end

  private

  def todo
    current_user.todos.find(params[:todo_id])
  end
end
