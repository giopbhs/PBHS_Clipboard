class CommentsController < ApplicationController
	def create
	@snipit = Snipit.find(params[:snipit_id])	
	@comment = @snipit.comments.create(params[:comment].permit(:name, :body))

	redirect_to snipit_path(@snipit)

	end

	def destroy
		@snipit = Snipit.find(params[:snipit_id])	
		@comment = @snipit.comments.find(params[:id])
		@comment.destroy

		redirect_to snipit_path(@snipit)
	end

end
