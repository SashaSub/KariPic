class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy
  has_many :posts       
  has_many :images, as: :imageable
  #has_one_attached :image, as: :imageable
  accepts_nested_attributes_for :images

  #validates :images, presence: true
  enum :role, [:normal_user, :admin]

end
