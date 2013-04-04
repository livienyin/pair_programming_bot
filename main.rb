require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/index.html' do
  @question = "Do you have a test for that?"
  @yes_href = "/pass.html"
  @no_href ="/write_test.html"
  erb :yesno
end

get '/pass.html' do
  @question = "Does the test pass?"
  @yes_href = "/refactor.html"
  @no_href = "/write_code.html"
  erb :yesno
end

get '/refactor.html' do
  @question = "Need to refactor?"
  @yes_href = "/do_refactor.html"
  @no_href = "/new_feature.html"
  erb :yesno
end

get '/do_refactor.html' do
  @question = "Refactor the code."
  @done = "/pass.html"
  erb :done
end

get '/new_feature.html' do
  @question = "Select a new feature to implement."
  @continue = "/index.html"
  erb :continue
end

get '/write_test.html' do
  @question = "Write a test."
  @done = "/pass.html"
  erb :done
end

get '/write_code.html' do
  @question = "Write just enough code for the test to pass."
  @done = "/pass.html"
  erb :done
end


# @num1 = params[:num1].to_i
#  @num2 = params[:num2].to_i
#  @operator = params[:operator]
