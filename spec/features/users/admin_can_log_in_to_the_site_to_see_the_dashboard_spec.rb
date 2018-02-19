require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root path" do
    it "I can login as the admin and see the dashboard link" do
      admin = create(:admin)
      visit root_path

      fill_in "name", with: admin.name
      fill_in "password", with: admin.password
      click_on "Log In"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Dashboard")
      expect(page).to_not have_content("Log In")
    end
  end
end
