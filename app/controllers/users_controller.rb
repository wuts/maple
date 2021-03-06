class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  
  # Protect these actions behind an admin login
  # before_filter :admin_required, :only => [:suspend, :unsuspend, :destroy, :purge]
  before_filter :find_users, :only => [:suspend, :unsuspend, :destroy, :purge]
  
  # render new.rhtml
  def new
    @users = Users.new
  end
 
  def create
    logout_keeping_session!
    @users = Users.new(params[:users])

    @users.register! if @users && @users.valid?
    success = @users && @users.valid?

    if success && @users.errors.empty?
      redirect_back_or_default('/home')
      flash[:notice] = "Thanks for signing up!  We're sending you an email with your activation code."
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
      render :action => 'new'
    end
  end

  def activate
    logout_keeping_session!
    users = Users.find_by_activation_code(params[:activation_code]) unless params[:activation_code].blank?
    case
    when (!params[:activation_code].blank?) && users && !users.active?
      users.activate!
      flash[:notice] = "Signup complete! Please sign in to continue."
      redirect_to '/login'
    when params[:activation_code].blank?
      flash[:error] = "The activation code was missing.  Please follow the URL from your email."
      redirect_back_or_default('/home')
    else 
      flash[:error]  = "We couldn't find a users with that activation code -- check your email? Or maybe you've already activated -- try signing in."
      redirect_back_or_default('/home')
    end
  end

  def suspend
    @users.suspend! 
    redirect_to users_path
  end

  def unsuspend
    @users.unsuspend! 
    redirect_to users_path
  end

  def destroy
    @users.delete!
    redirect_to users_path
  end

  def purge
    @users.destroy
    redirect_to users_path
  end
  
  # There's no page here to update or destroy a users.  If you add those, be
  # smart -- make sure you check that the visitor is authorized to do so, that they
  # supply their old password along with a new one to update it, etc.

protected
  def find_users
    @users = Users.find(params[:id])
  end
end
