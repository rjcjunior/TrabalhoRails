json.extract! user_jogo, :id, :user_id, :jogo_id, :created_at, :updated_at
json.url user_jogo_url(user_jogo, format: :json)