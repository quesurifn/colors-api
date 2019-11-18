class User < ApplicationRecord
    has_one_attached :avatar
    has_secure_password

    validates :email, presence: true, uniqueness: true, case_sensitive: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :username, presence: true, uniqueness: true, case_sensitive: true
    validates :password, length: {minimum: 6}, if: -> {new_record? || !password.nil?}
end
