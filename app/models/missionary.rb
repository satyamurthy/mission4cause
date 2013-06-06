class Missionary < ActiveRecord::Base
  attr_accessible :missbio

  validates :missbio, presence: true

  belongs_to :user
  validates :user_id, presence: true
end
