class Post < ActiveRecord::Base
  validates :title, :uniqueness => true
  belongs_to :categories
end