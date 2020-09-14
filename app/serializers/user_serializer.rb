class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :projects
  
end
