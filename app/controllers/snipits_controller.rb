class SnipitsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	
	def index
		@snipits = Snipit.all.order('created_at DESC')
	end

	def new
		@snipit = Snipit.new
	end

	def

	def create
		@snipit = Snipit.new(snipit_params)
		@snipit.user = current_user
		if @snipit.save
			redirect_to @snipit
		else
			render 'new'
		end
	end

	def show
		@snipit = Snipit.find(params[:id]) 
	end

	def edit
		@snipit = Snipit.find(params[:id])
	end

	def update
		@snipit = Snipit.find(params[:id])

		if @snipit.update(params[:snipit].permit(:title, :body))
			redirect_to @snipit
		else
			render 'edit'
		end
	end

	def destroy
		@snipit = Snipit.find(params[:id])
		@snipit.destroy

		redirect_to snipits_path
	end

	private

	def snipit_params
		params.require(:snipit).permit(:title, :body)
		
	end


end
