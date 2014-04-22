class Stadium < ActiveRecord::Base
	validates :name_stadium, presence: true, uniqueness: true
	validates :city, presence: true, uniqueness: true, inclusion: ["Belo Horizonte", "Brasilia", "Cuiaba", "Curitiba", "Fortaleza", "Manaus", "Natal", "Recife", "Rio de Janeiro", "Salvador", "Sao Paulo"] 
	/Tipo date necesita validacion de ser valido O.o, como poner las diagonales/
	validates :date_build, presence: true 
	validates :max_capacity, numericality: {only_integer: true, greater_than: 0}
	validates:photo, presence: true, format: /\A( ([a-z]|[A-Z]|\d|\s)+:([a-z]|[A-Z]|\d|\s)+ )\z/i
	validates :city, inclusion: ["Belo Horizonte", "Brasilia", "Cuiaba", "Curitiba", "Fortaleza", "Manaus", "Natal", "Recife", "Rio de Janeiro", "Salvador", "Sao Paulo"]
end
