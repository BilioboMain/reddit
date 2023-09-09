class User < ApplicationRecord
  validates :username, uniqueness: true, length: {minimum: 2}
  validates :password, length: { in: 6..20 }
end
