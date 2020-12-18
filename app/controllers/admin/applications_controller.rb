class Admin::ApplicationsController < ActionController::Base
  def index 
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
    if @application.pending? && @application.pet_applications.all? { |app| app.status != "in_progress"} 
      update
    end
  end
  
  def update
    application = Application.find(params[:id])
    if application.pending?
      if application.pet_applications.any? { |app| app.rejected? } 
        application.rejected!
      elsif application.pet_applications.all? { |app| app.approved? }
        application.accepted!
        application.pets.each do |pet|
          pet.adoptable = false
        end
      end
    else
      application.status
    end
    redirect_to "/admin/applications/#{application.id}"
  end
end
