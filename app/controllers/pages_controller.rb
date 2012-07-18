class PagesController < ApplicationController

	def index		
	end

	def render_rack
		render :partial => 'racks/'+params['rack_id']
	end

	def render_clone
		render :partial => 'clones/clone_'+params['clone_id']
	end	
end
