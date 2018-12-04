class Member < ApplicationRecord
  belongs_to :user
  belongs_to :group

  # validates :authority, {presence: true, numericality: {only_integer: true} }

end
