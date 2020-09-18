class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :user_id, :description
end
