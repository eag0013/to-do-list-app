class TodoController < ApplicationController
def index
@todos = Todo.all
end

def create
@todo = Todo.create(todo_params)
redirect_to '/todo'
end

private
def todo_params
params.require(:todo).permit(:item)
end