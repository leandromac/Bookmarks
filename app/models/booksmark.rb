class Booksmark < ActiveRecord::Base
    validates_presence_of :url, :title


	def self.search(query)
		where("title like ?", "%#{query}%") #cross site scripting
	end
end