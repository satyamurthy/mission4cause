class Missionary < ActiveRecord::Base
  attr_accessible :missbio, :avatar, :missname, :misscountry, :missfacebook, :misstwitter, :missstory

  validates :missname, presence: true
  validates :missbio, presence: true
  validates :user_id, presence: true
  validates :misscountry, presence: true
  validates_attachment :avatar, presence: true,
  															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  															size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :avatar, styles: { medium: "200x200>"}
  
end
