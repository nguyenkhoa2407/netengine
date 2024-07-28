Rails.application.routes.draw do
  get "/" => "tasks#index"
  resources 'tasks', :only => [:index, :update]
end
