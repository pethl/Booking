class OpeningHour < ApplicationRecord
  has_many :sittings, inverse_of: :opening_hour
  belongs_to :restaurant
  validates_uniqueness_of :day
  accepts_nested_attributes_for :sittings, 
                                allow_destroy: true, 
                                reject_if: :all_blank
end
