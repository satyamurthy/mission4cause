class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
          :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :usercountry, :heartcause, :password, :password_confirmation, :remember_me, :name, :mugshot, :punchline, :userblog
  has_attached_file :mugshot, styles: { medium: "150x150>"}

  validates :punchline, presence: true
  validates :heartcause, presence: true
  validates :usercountry, presence: true
  validates_attachment :mugshot, presence: true,
  									content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/gif', 'image/png'] },
  									size: { less_than: 5.megabytes}
 
  # attr_accessible :title, :body

  has_many :causes
  has_many :missionaries
end
