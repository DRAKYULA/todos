class TodosController < ApplicationController
  before_filter :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create(todo_params)
    redirect_to todos_path, status: 200
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
