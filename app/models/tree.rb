class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions
end
