class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :check_host

  def check_host
      if request.host.split('.')[0] == 'www'
          redirect_to "http://" + request.host.gsub('www.','')
      end
  end
end
