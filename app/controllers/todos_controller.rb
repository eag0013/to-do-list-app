class TodosController < ApplicationController
    
def index
  @todos = Todo.all
end

def new
  @todo = Todo.new
end

def create
  @todo = Todo.create(todo_params)
  redirect_to todos_path
end

private # why does it say private? what happens if this changes?
def todo_params
  params.require(:todo).permit(:item)
end

def edit
  @todo = Todo.find(params[:id])
  @todo.update(todo_params)
  redirect_to todos_path
end

def update
  @todo = Todo.find(params[:id]) 
  @todo.update
  redirect_to todos_path
end

def destroy
  @todo = Todo.find(params[:id])
  @todo.destroy
  redirect_to todos_path
end

end
