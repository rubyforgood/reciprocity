json.extract! referral_code, :id, :nonce, :type, :code, :participant_id, :used, :created_at, :updated_at
json.url referral_code_url(referral_code, format: :json)
