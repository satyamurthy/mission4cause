class Missionary < ActiveRecord::Base
  attr_accessible :missbio

  validates :missbio, presence: true
end
