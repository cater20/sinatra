class TasksController < Sinatra::Base
    set :views, File.expand_path("../views", __dir__)


  # Home route - display all tasks
  get "/" do
    @tasks = Task.all
    erb :index
  end

  # Form page - show new task form
  get "/tasks/new" do
    erb :new
  end

  # Create task - handle form submission
  post "/tasks" do
    task = Task.new(params[:title])
    task.save
    redirect "/"
  end

end