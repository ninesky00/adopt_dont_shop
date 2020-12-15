require 'rails_helper'

RSpec.describe "Application show page" do 
  applicant1 = Application.create! name: "sample applicant",
                                  address: "sample address",
                                  description: "sample description",
                                  pets: "sample pets",
                                  status: "sample status"

  describe "as a visitor" do
    it "shows name, full address, description, name of pets, and status" do
    visit "/applications/#{applicant1.id}"

    expect(page).to have_content(applicant1.name)
    expect(page).to have_content(applicant1.address)
    expect(page).to have_content(applicant1.description)
    expect(page).to have_content(applicant1.pets)
    expect(page).to have_content(applicant1.status)
    end
  end
end