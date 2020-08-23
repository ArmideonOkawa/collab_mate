class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :complete, :category, :user
  
end
