class JobsController < ApplicationController
  
  def index
    @jobs = Job.all
  end

  def new 
    @job = Job.new
  end 

  def create
  p "In the create method!!!!!!"
  job = Job.create(job_params)
  p job
  redirect_to jobs_path
  end
  
  # Use p to print out info in the log
  # def create
  # p "In the create method!!!!!!"
  # job = Job.create(job_params)
  # p job
  # redirect_to jobs_path
  # end
end  

private

  def job_params
    params.require(:job).permit(:title, :description)
  end