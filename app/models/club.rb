class Club < ApplicationRecord
  validates :name, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :postcode, presence: true
  validates :country, presence: true
  validates :street_no, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
end
