class User < ApplicationRecord

  has_many :members
  has_many :groups, through: :members
  has_many :media

  validates :username, presence: true
  validates :password, presence: true
  validates :name, presence: true 

end
