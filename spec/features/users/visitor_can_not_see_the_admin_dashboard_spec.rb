require "rails_helper"

describe "As a visitor" do
  describe "when I try to visit the dashboard page" do
    it "I get a 404 error" do
      visit dashboard_path

      expect(page).to have_content("The page you were looking for doesn't exist")
    end
  end
end
