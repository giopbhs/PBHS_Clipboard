class SnipitsController < ApplicationController
	def index
		
	end

	def new
		
	end

	def create
		@snipit = Snipit.new(snipit_params)
		@snipit.save

		redirect_to @snipit
	end

	def show
		@snipit = Snipit.find(params[:id])
	end

	private

	def snipit_params
		params.require(:snipit).permit(:title, :body)
		
	end


end
