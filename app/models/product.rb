class Product < ApplicationRecord
  validates :name, :price, :explain, :burden_id,:condition_id,:category_id,:deliveryday_id,:prefecture_id, presence: true
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :burden
  belongs_to_active_hash :deliveryday

end



