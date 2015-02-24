class PostSerializer < ActiveModel::Serializer
  attributes :id, :photo, :description, :name
end
