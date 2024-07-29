class User < ApplicationRecord
  
  #Sバリデーション追加
  validates :full_name, presence: true, length: {maximum: 50}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
