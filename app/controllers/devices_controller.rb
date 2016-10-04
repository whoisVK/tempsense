class DevicesController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:send_email]
  
  def index
    @devices = Device.all
  end

  def show
    @device = Device.find(params[:id])
  end

  def new
  
  end

  def create

  end

  def destroy
  
  end

  def edit

  end

  def send_email
    puts "params value:::::::#{params}"
    puts "coming to send_mail::::::::::::::::"
    EmailNotificationWorker.perform_async()
    render json: {status: "success"}
  end

  def update
  	
  end

end
