class Post < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user

  validates :title, uniqueness: true
  validates :body, null: false
end
