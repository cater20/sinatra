class TasksController < Sinatra::Base
  set :views, File.expand_path("../views", __dir__)
  set :public_folder, File.expand_path("../public", __dir__)

  # Home route
  get "/" do
    @tasks = Task.all
    erb :index
  end

  # Form page - new task
  get "/tasks/new" do
    erb :new
  end

  # Create task
  post "/tasks" do
    task = Task.new(params[:title])
    task.save
    redirect "/"
  end

  # Edit form
  get "/tasks/:id/edit" do
    @task = Task.find(params[:id])
    erb :edit
  end

  # Update task
  post "/tasks/:id/update" do
    task = Task.find(params[:id])
    task.update(params[:title])
    redirect "/"
  end

  # Delete task
  post "/tasks/:id/delete" do
    Task.delete(params[:id])
    redirect "/"
  end

end