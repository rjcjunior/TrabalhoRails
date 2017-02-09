json.extract! jogo, :id, :nome, :preco, :estilo, :produtora, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)