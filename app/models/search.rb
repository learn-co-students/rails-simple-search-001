class Search
	def self.for(keyword)
		q = "%#{keyword.downcase}%"
		Word.where("LOWER(name) LIKE ?", q)
	end
end
