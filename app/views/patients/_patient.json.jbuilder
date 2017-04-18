json.extract! patient, :id, :first_name, :surname, :dob, :photo, :gender, :address1, :address2, :post_code, :state, :country, :vaccinator_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
