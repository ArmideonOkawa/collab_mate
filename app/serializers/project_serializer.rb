class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category_id, :user_id, :ideas
  
end
 