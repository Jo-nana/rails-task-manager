Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index', as: :tasks
  # list all the tasks
  # get 'tasks', to: 'tasks#index'
  # # add a new task
  # # 1. show the form to the user
  # get 'tasks/new', to: 'tasks#new'
  # # 2. create a bew taks
  # post 'tasks', to: 'tasks#create'
  # # view the details of each tasks
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # # edit/update a task
  # # 1. show the form to the user
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # # 2. update the taks
  # patch 'tasks/:id', to: 'tasks#update'
  # # deleter a task
  # delete 'tasks/:id', to: 'tasks#destroy'
  resources :tasks
end
