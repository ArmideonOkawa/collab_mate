class User < ApplicationRecord
        has_many :projects
        has_many :comments
        has_secure_password
        validates :username, uniqueness: { case_sensitive: false} 
        validates :username, uniqueness: true
        validates :email, presence: true
end
