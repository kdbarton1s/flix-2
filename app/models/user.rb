class User < ApplicationRecord
  has_secure_password

  validates :password, length: { minimum: 8, allow_blank: true }

  validates :name, presence: true

  validates :email, uniqueness: { case_sensitive: false }, presence: true, format: /\A\S+@\S+\z/

  validates :username, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9]+\Z/ }
end
