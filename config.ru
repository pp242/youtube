require "sinatra"
require "sinatra/reloader" if development?
require_relative "./controllers/post_controllers.rb"
require"pg"
require_relative "./models/Video.rb"

use Rack::MethodOverride


run PostController 