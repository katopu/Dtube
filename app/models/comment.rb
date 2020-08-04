class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :content, presence: true, unless: :image?
end
