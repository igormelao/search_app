require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = FactoryGirl.create(:article)
  end

  describe "creation" do
    it "can be created" do
      expect(@article).to be_valid
    end
  end

  describe "validations" do
    it "cannot be created without title" do
      @article.title = nil
      expect(@article).to_not be_valid
    end
    it "cannot be created without description" do
      @article.description = nil
      expect(@article).to_not be_valid
    end
  end
end
