class Booksmark < ActiveRecord::Base

	def self.search(query)
		where("title like ?", "%#{query}%") #cross site scripting
	end
end