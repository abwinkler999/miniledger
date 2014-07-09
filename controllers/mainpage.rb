require 'nyny'

class App < NYNY::App
  get '/' do
    request.env.to_s
  end
end