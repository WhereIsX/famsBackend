class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :members, :media
end
