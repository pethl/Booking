json.extract! rdetail, :id, :restaurant_id, :booking_duration, :min_booking, :max_booking, :last_booking_time, :big_table_count, :max_diners_at_current_time, :created_at, :updated_at
json.url rdetail_url(rdetail, format: :json)
