class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :zip_code, :city, :address, :building, :phone_number, presence: true
end
