class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images #, as: :imageable
  has_many :comments, dependent: :destroy

end
