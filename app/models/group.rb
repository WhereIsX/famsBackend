class Group < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  has_many :media

  validates :name, presence: true

end
