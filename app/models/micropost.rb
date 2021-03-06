class Micropost < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 255 }


  has_many :favorite #s
  has_many :favoriters, through: :favorite , source: :user

  #has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  #has_many :favoriters, through: :reverses_of_favorite, source: :user



end
