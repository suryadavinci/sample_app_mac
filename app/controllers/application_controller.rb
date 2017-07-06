class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hello, world! Surya Sample App Rocks!!!!! From Home!!! FROM ROOMs"
  end
end
