require "rails_helper"

describe "As an admin" do
  describe "when I am logged in to the site" do
    it "I can logout and it will return me to the root path" do
      admin = create(:admin)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
      visit rsvp_path

      click_on "Logout"

      expect(current_path).to eq(root_path)
    end
  end
end
