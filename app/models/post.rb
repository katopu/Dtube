class Post < ApplicationRecord
  belongs_to :user
  has_many :tag_posts
  has_many :tags, through: :tag_posts
  validates :name, presence: true, uniqueness: true
end
