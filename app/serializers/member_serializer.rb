class MemberSerializer < ActiveModel::Serializer
  attributes :user_id, :group_id, :authority
end
