require 'rails_helper'

describe "Article" do
  before do
      visit root_path
    end
  
  describe "index" do
    it "can be reached successfully" do
      expect(page.status_code).to eq(200)
    end

    it "has a title of Finding Articles" do
      expect(page).to have_content(/Finding articles/)
    end
  end

  describe "Searching" do
    before do
      Article.create!(title: "Test", description: "Test")
      Article.reindex
    end

    it "can be searched from search form page" do
      fill_in 'keywords', with: "Test"
      click_on "Search"

      expect(page).to have_content("Title: Test")
      expect(page).to have_content("Description: Test")
      expect(page).to have_content("Test has 1 result")
    end
  end
end