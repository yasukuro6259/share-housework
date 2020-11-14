class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups
  has_many :tasks

  validates :name, presence: true, length: { maximum: 20 }
  validates :password, length: { minimum: 8 }

  def self.guest
    find_or_create_by!(name: 'guest', email: 'guest@gmail.com') do |user|   #find_or_create_byメソッド :存在していたら情報取得、新規なら作成・保存
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
