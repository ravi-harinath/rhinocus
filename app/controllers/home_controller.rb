class HomeController < ApplicationController
  def index
    @services = Service.limit(6)
    @featured_product = Product.first
    @jobs = Job.limit(3)
  end

  def about
  end
end
