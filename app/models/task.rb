class Task < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :image
end
