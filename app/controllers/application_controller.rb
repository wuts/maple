# -*- coding: utf-8 -*-
# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  #before_filter :authenticate,:except=>[:index,:show]
  before_filter :set_locale
  # Scrub sensitive parameters from your log
  filter_parameter_logging :password,:password_confirmation


  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

  private


  def set_locale
    I18n.locale=params[:locale] || 'zh_CN'
    @locale=I18n.locale
    @language_id=Language.find_by_code(@locale)
    @locales_available ||= [["English", "en"], ["简体中文", "zh_CN"]]
  end
end
