class Photo < ApplicationRecord

  # ここに追加する
  belongs_to :post
  # この行を追加する
  validates :images, presence:true
end
