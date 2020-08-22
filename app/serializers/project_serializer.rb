class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :complete, :category
  belongs_to :user
end
