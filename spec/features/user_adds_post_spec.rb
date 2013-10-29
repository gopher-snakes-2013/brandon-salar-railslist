require 'spec_helper'

describe "the homepage" do
  let!(:category) {
    test_cat = Category.new
    test_cat.name = "test"
    test_cat.save
    test_cat
  }

  it "can create a post", :js => true do
    visit root_path
    fill_in 'post[title]', :with => "derp"
    fill_in 'post[description]', :with => "herp"
    click_on 'create'
    click_link category.name
    expect(page).to have_content "derp"
  end
end
