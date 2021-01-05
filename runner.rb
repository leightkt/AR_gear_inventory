require_relative 'config/environment'

app = Cli.new

app.welcome

app.get_user

app.app_flow

# need to get activities when adding gear and create new list of gearactivities

binding.pry