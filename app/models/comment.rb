class Comment < ApplicationRecord
  validates :body, length: { in: 6..200 }

  belongs_to :user
  belongs_to :post
end
