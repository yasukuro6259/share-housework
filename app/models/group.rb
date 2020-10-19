class Group < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :content, presence: true, length: { maximum: 10 }
  end
