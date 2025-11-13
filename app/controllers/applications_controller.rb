class ApplicationsController < ApplicationController
  def new
    @application = Application.new
    @job = Job.find(params[:job_id]) if params[:job_id]
  end

  def create
    @application = Application.new(application_params)

    if @application.save
      redirect_to root_path, notice: "Application submitted successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def application_params
    params.require(:application).permit(:job_id, :name, :email, :phone, :resume_url, :message)
  end
end
