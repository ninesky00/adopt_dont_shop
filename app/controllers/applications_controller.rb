class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
    if params[:search]
      @pets = Pet.search(params[:search])
    end
  end
  
  def new
    @application = Application.new
  end

  def edit
    @application = Application.find(params[:id])
  end

  def create
    @application = Application.create(applications_params)
    if @application.valid?
      redirect_to "/applications/#{@application.id}"
    else 
      flash.now[:error] = @application.errors.full_messages
      render 'new'
    end
  end
  
  def update
    application = Application.find(params[:id])
    application.update(applications_params)
    redirect_to "/applications/#{application.id}"
  end

  def destroy
    Application.destroy(params[:id])
    redirect_to '/applications'
  end

  private
  def applications_params
    params.permit(:name, :address, :city, :state, :zip, :description, :pets, :status)
  end
end
