class Sitting < ApplicationRecord
  belongs_to :opening_hour
  
  MIN_TYPES = [00,15,30,45]
end
