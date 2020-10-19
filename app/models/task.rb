class Task < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :image

  validates :content, presence: true, length: {maximum: 50}
  validates :description, length: {maximum: 500}
end
