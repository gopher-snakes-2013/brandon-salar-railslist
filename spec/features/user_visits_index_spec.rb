require 'spec_helper'

describe "the homepage" do
  let!(:category) {
    test_cat = Category.new
    test_cat.name = "test"
    test_cat.save
    test_cat
  }
  # before :each do
  #   test_cat = Category.new
  #   test_cat.name = "test"
  #   test_cat.save
  # end

  it "can see all categories", :js => true do
    visit root_path
    expect(page).to have_content category.name
  end
end