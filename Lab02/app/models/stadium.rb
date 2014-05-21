class Stadium < ActiveRecord::Base
	has_many :matches

	validates :name_stadium, presence: true, uniqueness: true
	validates :city, presence: true, uniqueness: true, inclusion: ["Belo Horizonte", "Brasilia", "Cuiaba", "Curitiba", "Fortaleza", "Manaus", "Natal", "Recife", "Rio de Janeiro", "Salvador", "Sao Paulo"] 
	validates :date_build, presence: true 
	validates :max_capacity, numericality: {only_integer: true, greater_than: 0}
	validates:photo, presence: true, format: URI:: regexp(%w(http https)) 
end
