class Admin::ServicesController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def index
    @services = Service.all.order(created_at: :desc)
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to admin_services_path, notice: "Service created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to admin_services_path, notice: "Service updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to admin_services_path, notice: "Service deleted."
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :icon)
  end
end
