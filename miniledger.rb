require 'nyny'

require './controllers/mainpage.rb'

Signal.trap 'INT' do
    Process.kill 9, Process.pid
end

App.run!
