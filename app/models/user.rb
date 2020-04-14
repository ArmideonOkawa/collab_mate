class User < ApplicationRecord
        has_many :projects
        has_many :comments
        has_many :projects, through: :comments
        has_secure_password
        validates :username, uniqueness: { case_sensitive: false} 
        validates :username, uniqueness: true
end
