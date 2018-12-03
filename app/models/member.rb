class Member < ApplicationRecord
  belongs_to :user
  belongs_to :group

  # def is_member?(user_id, group_id)
  #
  #   if Member.find_by(user_id: user_id) && Member.find_by(user_id: user_id).group_id
  #     return true
  #   else
  #     return false
  #   end
  #
  # end

end
