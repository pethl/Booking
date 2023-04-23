json.extract! custbook, :id, :restaurant_id, :booking_date_time, :number_of_diners, :accessible, :highchair, :name, :email, :phone, :status, :created_at, :updated_at
json.url custbook_url(custbook, format: :json)
