class Medium < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validate :is_member
  validates :content, {presence: true}

  def is_member
    if Member.find_by(user_id: user_id, group_id: group_id) == nil
      errors.add(:group_id, "Must be a member of that group to post a medium!")
    end
  end

end