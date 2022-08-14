class User < ApplicationRecord

  # この行を追加する
  has_many :posts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable,  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

 # この1行を追加
 validates :name, presence: true, length: { maximum: 50 }         
end
