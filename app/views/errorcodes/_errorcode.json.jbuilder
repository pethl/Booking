json.extract! errorcode, :id, :ref, :msg, :desc, :created_at, :updated_at
json.url errorcode_url(errorcode, format: :json)
