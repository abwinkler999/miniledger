require 'nyny'

require './controllers/mainpage.rb'
require './database/dbreader.rb'

Signal.trap 'INT' do
    Process.kill 9, Process.pid
end

read_in_entries
App.run!
