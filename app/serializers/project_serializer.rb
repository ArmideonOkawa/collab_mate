class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :complete
  belongs_to :user
end
