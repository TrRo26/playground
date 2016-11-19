class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, uniqueness: true
  validates :body, null: false
end
