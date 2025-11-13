class Admin::DashboardController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def index
    @services_count = Service.count
    @products_count = Product.count
    @jobs_count = Job.count
    @applications_count = Application.count
    @contact_messages_count = ContactMessage.count
  end
end
