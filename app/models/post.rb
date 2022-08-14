class Post < ApplicationRecord
   # ここに追加する
   belongs_to :user

   # ここに追加
   has many :photos, dependent: :destroy
end
