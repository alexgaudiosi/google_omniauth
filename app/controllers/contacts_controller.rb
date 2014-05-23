class ContactsController < ApplicationController

	def index
		@contacts = (request.env['omnicontacts.contacts']).sort_by { |k,v| k[:name] }
		respond_to do |format|
			format.html 
		end
	end
end
