Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root     to: 'tasks#tasks'

  # Create a Task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Get A Particular ID/Task
  get "tasks/:id", to: "tasks#show", as: :task

  #Update a Task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  #Delete an Existing Task
  delete "tasks/:id", to: "tasks#destroy"
end
