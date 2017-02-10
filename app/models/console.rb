class Console < ApplicationRecord
	has_many :jogos, dependent: :destroy
end
