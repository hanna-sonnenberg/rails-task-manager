Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # pattern of a route: verb "url", to: "controller#action"
  # route for displaying all tasks
  get 'tasks', to: 'tasks#index'
  # route for the form to add a new task
  get 'tasks/new', to: 'tasks#new'
  # route for adding a new task
  post 'tasks', to: 'tasks#create'
  # route for the form to edit a task - by id
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # route for displaying a task - by id
  get 'tasks/:id', to: 'tasks#show', as: :task
  # route edit a task
  patch 'tasks/:id', to: 'tasks#update'
  # route to delete a post
  delete "tasks/:id", to: "tasks#destroy"
end
