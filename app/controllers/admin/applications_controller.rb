class Admin::ApplicationsController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def index
    @applications = Application.includes(:job).order(created_at: :desc)
  end

  def show
    @application = Application.find(params[:id])
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy
    redirect_to admin_applications_path, notice: "Application deleted."
  end
end
