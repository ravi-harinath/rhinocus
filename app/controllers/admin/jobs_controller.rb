class Admin::JobsController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def index
    @jobs = Job.all.order(created_at: :desc)
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to admin_jobs_path, notice: "Job created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to admin_jobs_path, notice: "Job updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to admin_jobs_path, notice: "Job deleted."
  end

  private

  def job_params
    params.require(:job).permit(:title, :location, :exp_required, :skills, :description)
  end
end
