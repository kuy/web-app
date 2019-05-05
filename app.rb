require 'sinatra'
require 'sinatra/base'
require 'thin'

class App < Sinatra::Base
  configure do
    enable :logging
  end

  get '/' do
    'OK, OK'
  end

  get '/hello' do
    'WORLD'
  end

  get '/sleep' do
    seconds = params[:seconds].to_f || 1.0
    sleep seconds
    "Delayed #{seconds} sec.<br/><strong>Tip:</strong> use `/sleep?seconds=3`"
  end
end
