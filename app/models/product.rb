class Product < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :member
  has_many :favorites, dependent: :destroy
  has_many :favorited_members, through: :favorites, source: :member
end
