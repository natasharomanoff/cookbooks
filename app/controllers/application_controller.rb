class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :choose_layout


  def choose_layout
  	if devise_controller?
  		"devise"
  	else
  		"application"
  	end
  end

end
