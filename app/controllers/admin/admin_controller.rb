class Admin::AdminController < ApplicationController
  layout "admin"
  before_filter :login_required
  include AuthenticatedSystem

 private
 def authenticate
    authenticate_or_request_with_http_basic do |name,password|
      name=='admin' && password=='admin'
    end
  end

 def login_required
   if !logged_in?
      redirect_to '/login'
   end
 end

 def http_basic_authenticate_required
   authenticate_or_request_with_http_basic do |username,password|
     username=="admin" && password=="8888"
   end
 end
end
