require "rails_helper"

describe "As an Admin" do
  before :each do
    @guest = Guest.create!(name: "Eupanifahorious", accompanying: 2)
    @admin = User.create!(name: "Opakawagalaga", password: "thisismahpassword", role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@admin)
  end
  describe "when I visit the dashboard page" do
    it "I can see all of the guests who are attending" do
      visit dashboard_path

      expect(page).to have_content("#{@guest.name} is coming and bringing #{@guest.accompanying} guests.")
    end

    it "I can see a total number of guests coming" do
      visit dashboard_path

      expect(page).to have_content("Total Guests: 3")
    end
  end
end
