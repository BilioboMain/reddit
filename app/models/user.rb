class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {minimum: 2}
  validates :password, presence: true, length: { in: 6..20 }
end
