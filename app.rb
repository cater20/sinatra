require "sinatra"
require "sinatra/reloader" if development?

# Load MVC files
require_relative "./models/task"
require_relative "./controllers/task_controller"

set :port, 4567
set :bind, "0.0.0.0"


