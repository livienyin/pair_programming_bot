require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/add/:num1/:num2' do
  result = (params[:num1].to_i + params[:num2].to_i).to_s
  @result = "#{params[:num1]} + #{params[:num2]} = #{result}"
  erb :calc
end

get '/subtract/:num1/:num2' do
  result = (params[:num1].to_i - params[:num2].to_i).to_s
  @result = "#{params[:num1]} - #{params[:num2]} = #{result}"
  erb :calc
end

get '/multiply/:num1/:num2' do
  result = (params[:num1].to_i * params[:num2].to_i).to_s
  @result = "#{params[:num1]} * #{params[:num2]} = #{result}"
  erb :calc
end

get '/divide/:num1/:num2' do
  result = (params[:num1].to_f / params[:num2].to_f).to_s
  @result = "#{params[:num1]} / #{params[:num2]} = #{result}"
  erb :calc
end

get '/' do
  @result = 'Hello, World!'
end
