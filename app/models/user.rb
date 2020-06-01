class User < ApplicationRecord
        has_many :projects
        has_many :comments
        has_secure_password
        validates :username, length: { minimum: 4 }
        validates :username, uniqueness: { case_sensitive: false} 
        validates :username, uniqueness: true
        validates :email, uniqueness: true
        validates :email, presence: true
        validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
