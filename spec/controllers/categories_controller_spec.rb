require "spec_helper"

describe CategoriesController do
  describe "GET index" do
    it "assigns @categories" do
      category = Category.all
      get :index
      expect(assigns(:categories)).to eq(category)
    end
  end
end