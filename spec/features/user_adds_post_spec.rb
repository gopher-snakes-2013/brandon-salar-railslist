require 'spec_helper'

describe "the user posts things. it" do
  let!(:category) {
    test_cat = Category.new
    test_cat.name = "test"
    test_cat.save
    test_cat
  }
   let!(:post){
    test_post = Post.new
    test_post.category_id = 1
    test_post.title = "brandon sucks"
    test_post.description = "herp"
    test_post.save
    test_post
  }

  it "can create a post", :js => true do
    visit root_path
    fill_in 'post[title]', :with => "derp"
    fill_in 'post[description]', :with => "herp"
    click_on 'create'
    click_link category.name
    expect(page).to have_content "derp"
  end

  it "can click through to a post's description", :js => true do
    visit root_path
    click_link category.name
    click_link "brandon sucks"
    expect(page).to have_content "herp"
  end
end
