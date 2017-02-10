class User < ApplicationRecord
    has_secure_password
    before_save { self.nome = nome.downcase }
    has_many :user_jogos, dependent: :destroy
end
