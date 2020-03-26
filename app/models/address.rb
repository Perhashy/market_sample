class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :zip_code, :city, :prefecture_id, :address, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :prefecture

end
