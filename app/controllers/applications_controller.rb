class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end
  
  def new
  end

  def edit
    @application = Application.find(params[:id])
  end

  def create
    application = Application.find(params[:id])
    application.create!(applications_params)
    redirect_to "/applications/#{application.id}"
  end
  
  def update
    application = Application.find(params[:id])
    application.update!(applications_params)
    redirect_to "/applications/#{application.id}"
  end

  def destroy
    Application.find(params[:id])
    redirect_to '/applications'
  end

  private
  def applications_params
    params.permit(:name, :address, :description, :pets, :status)
  end
end
