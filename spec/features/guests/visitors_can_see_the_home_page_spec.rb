require "rails_helper"

describe "As a Visitor" do
  describe "when I visit the home page" do
    it "I can see details about the event" do
      visit root_path

      expect(page).to have_content("Welcome to Ludabode!")
    end

    it "I can see a link to RSVP" do
      visit root_path

      click_on "RSVP"

      expect(current_path).to eq(rsvp_path)
    end
  end
end
