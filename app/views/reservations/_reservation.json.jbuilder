json.extract! reservation, :id, :restaurant_id, :booking_date_time, :number_of_diners, :accessible, :highchair, :name, :email, :phone, :status, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
