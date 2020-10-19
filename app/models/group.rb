class Group < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :content, presence: true, length: { max: 10 }
  end
