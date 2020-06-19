class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requests
  has_many :matchs, dependent: :destroy
  # has_one_attached :photo

  validates :first_name, :level, :address, :gender, presence: true
  LEVEL = ["NC", "40", "30/5", "30/4", "30/3", "30/2", "30/1", "30", "15/5", "15/4", "15/3", "15/2", "15/1", "15", "5/6", "4/6", "3/6", "2/6", "1/6", "0", "-2/6", "-4/6", "-15", "-30"]
  GENDER = ["Man", "Woman"]
  validates :level, inclusion: { in: LEVEL }
  validates :gender, inclusion: { in: GENDER }

  after_validation :set_photo

  def set_photo
    self.photo = "https://res.cloudinary.com/dhtapshlv/image/upload/b_rgb:ffffff/v1592540966/tennis-player_mdhkjh.svg"
  end
end
