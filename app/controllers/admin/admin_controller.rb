class Admin::AdminController < ApplicationController
  layout "admin"
  before_filter :login_required

 private
 def authenticate
    authenticate_or_request_with_http_basic do |name,password|
      name=='admin' && password=='admin'
    end
  end

 def login_required
 end
end
