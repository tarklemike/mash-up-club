class ApplicationController < ActionController::Base
  def hello
    render html: "Hi John"
  end
end
