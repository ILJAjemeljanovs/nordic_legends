class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  add_breadcrumb "Home", :root_path
  def index
  end
end
