class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  has_many :reviews, dependent: :destroy
end
