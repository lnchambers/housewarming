require "rails_helper"

describe "As a visitor" do
  describe "when I visit the rsvp path" do
    it "I can rsvp to the event" do
      visit rsvp_path

      fill_in "guest[name]", with: "Opakawagalaga"
      fill_in "guest[accompanying]", with: 2
      click_on "Create Guest"

      expect(page).to have_content("You have RSVP'd")
      expect(current_path).to eq(root_path)
      expect(Guest.count).to eq(1)
    end
  end
end
