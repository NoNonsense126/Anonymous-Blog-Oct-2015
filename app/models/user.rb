class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true,
    format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\W]+\z/ }
end
