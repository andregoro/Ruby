class Produto2 < ApplicationRecord
	validates :nome, :presence => true
	validates :nome, uniqueness:  true
end
