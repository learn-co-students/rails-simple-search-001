class SearchController < ApplicationController
	def index
		word = Word.find_by(name: params[:keyword])
		
		unless word.nil?
			redirect_to word
		else
			@words = Search.for(params[:keyword])
		end
	end
end
