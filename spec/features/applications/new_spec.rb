require 'rails_helper'

RSpec.describe 'New Application' do
  describe 'As a visitor' do
    # describe 'When I visit the new application form by clicking a link on the index' do
      # it 'I can create a new application' do
      #   ...
      # end

      it 'I can not create an artist without a name' do
        visit new_application_path

        click_on 'Create Application'

        within("#flash") do 
          expect(page).to have_content("Field cannot be empty")
        end
        within("#application") do
          expect(page).to have_button('Create Application')
        end
      end

  end
end