class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], message: 'Category does not exist! Please choose from these categories: chinese, italian, japanese, french, belgian.' }
  validates :name, presence: true
  validates :address, presence: true
end
