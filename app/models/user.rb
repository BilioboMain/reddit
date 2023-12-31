class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: true, length: {minimum: 2}
  validates :password, length: { in: 6..20 }

  has_many :posts
  has_many :comments
end
