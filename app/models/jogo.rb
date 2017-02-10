class Jogo < ApplicationRecord
		belongs_to :console
		has_many :user_jogos, dependent: :destroy
end
