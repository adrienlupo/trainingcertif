class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :destroy
  has_many_attached :photos
end
