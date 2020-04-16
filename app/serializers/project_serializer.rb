class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :description
  belongs_to :user
end
