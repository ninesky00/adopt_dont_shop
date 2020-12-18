class PetApplicationsController < ApplicationController
  def create
    a = PetApplication.new(application_id: params[:app_id], pet_id: params[:pet_id])
    a.save
    redirect_to "/applications/#{params[:app_id]}"
  end

  def update
    b = PetApplication.find(params[:id])
    b.update(pet_applications_params)
    redirect_to "/admin/applications/#{b.application.id}"
  end

  private
  def pet_applications_params
    params.permit(:status)
  end
end
