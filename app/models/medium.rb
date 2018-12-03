class Medium < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :title, presence: true
  validates :image, presence: true
  # validate :is_member

  # checks if user is a member of group before posting
  # should the check be a Member class method?

  # def is_member
  #   if Member.find_by(user_id: user_id, group_id: group_id) == nil
  #     errors.add(:group_id, "Must be a member of that group to post a medium!")
  #   end
  # end

end
