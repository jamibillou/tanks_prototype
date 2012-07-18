class PagesController < ApplicationController

	def index
		
	end

	def render_rack
		render :partial => 'racks/'+params['rack_id']
	end
end
