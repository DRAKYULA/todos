class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to todos_path, status: 200
    else
      render new_todo_path
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
