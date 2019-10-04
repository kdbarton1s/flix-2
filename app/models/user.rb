class User < ApplicationRecord
  has_secure_password

  has_many :reviews, dependent: :destroy 

  validates :password, length: { minimum: 8, allow_blank: true }

  validates :name, presence: true

  validates :email, uniqueness: { case_sensitive: false }, presence: true, format: /\A\S+@\S+\z/

  validates :username, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9]+\Z/ }

  def self.authenticate(email_or_username, password)
    user = User.find_by(email: email_or_username) || User.find_by(username: email_or_username)
    user && user.authenticate(password)
  end
end
