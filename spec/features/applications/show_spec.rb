require 'rails_helper'

RSpec.describe "Application show page" do 
  applicant1 = Application.create! name: "sample applicant",
                                  address: "sample address",
                                  city: "sample city",
                                  state: "sample state",
                                  zip: "sample zip",
                                  description: "sample description",
                                  pets: "sample pets",
                                  status: "In Progress"

  describe "as a visitor" do
    it "shows name, full address, description, name of pets, and status" do
    visit "/applications/#{applicant1.id}"

    expect(page).to have_content(applicant1.name)
    expect(page).to have_content(applicant1.address)
    expect(page).to have_content(applicant1.city)
    expect(page).to have_content(applicant1.state)
    expect(page).to have_content(applicant1.zip)
    expect(page).to have_content(applicant1.description)
    expect(page).to have_content(applicant1.pets)
    expect(page).to have_content(applicant1.status)
    end
  end
end