class Enquiry
  include ActiveModel::Model
  include ActiveModel::Attributes
  
  attribute :restaurant_id, :integer
  attribute :booking_date, :datetime
  attribute :number_of_diners, :integer
  attribute :booking_time, :string
  
  validates :restaurant_id, :number_of_diners, :booking_date, presence: true
 
 
  def to_hash
     hash = {}; self.attributes.each { |k,v| hash[k] = v }
     return hash
   end
   
 
end