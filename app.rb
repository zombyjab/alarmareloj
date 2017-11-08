require 'sinatra'
require './reloj'
require 'json'

set :public_folder, 'public'
set :views, File.dirname(__FILE__) + "/views"

@@logs = Hash.new

get '/' do
	erb :"alarma"
end

get '/api/alarma/sonar' do
    reloj=Reloj.new
    reloj.definir_alarma(params["hora-alarma"])
    reloj.prender
    sonar = reloj.sonar?(params["hora-actual"])

    {:'hora-alarma'=>params["hora-alarma"],:'hora-actual'=>params["hora-actual"],:sonar => sonar}.to_json
end