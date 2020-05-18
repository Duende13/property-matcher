class DashboardController < ApplicationController
  def index
  end

  def profile
    @account = Account.find(params[:id])
  end

  private
  def set_sidebar
    @show_sidebar = true
  end
end
