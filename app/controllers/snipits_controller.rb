class SnipitsController < ApplicationController
	def index
		@snipits = Snipit.all.order('created_at DESC')
	end

	def new
		@snipit = Snipit.new
	end

	def create
		@snipit = Snipit.new(snipit_params)
		if @snipit.save
			redirect_to @snipit
		else
			render 'new'
		end
	end

	def show
		@snipit = Snipit.find(params[:id]) 
	end

	private

	def snipit_params
		params.require(:snipit).permit(:title, :body)
		
	end


end
