class Post < ApplicationRecord
  validates :title, length: { in: 2..40 }
  validates :body, length: { in: 2..400}

  belongs_to :user
end
