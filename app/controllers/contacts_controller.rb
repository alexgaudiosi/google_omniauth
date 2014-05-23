class ContactsController < ApplicationController

	def index
		@contacts = ((request.env['omnicontacts.contacts']).sort_by { |k,v| k[:name] }).paginate(:page => params[:page], :per_page => 5)
		respond_to do |format|
			format.html 
		end
	end
end
