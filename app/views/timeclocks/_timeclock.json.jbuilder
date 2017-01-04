json.extract! timeclock, :id, :hour_in, :minutes_in, :created_at, :updated_at
json.url timeclock_url(timeclock, format: :json)