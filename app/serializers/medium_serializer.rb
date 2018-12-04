class MediumSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :image, :title
end
