class CommentsController < ApplicationController
  before_action :authenticate_user!
  def new
    @comment = Comment.new
  end
  
  def create
    
    @beerspot = BeerSpot.find(params[:beer_spot_id])
		@comment = Comment.new(content:params[:comment][:content], user: current_user)
    @comment.beer_spot = @beerspot
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @beerspot, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @beerspot }
        format.js{  render :create, status: :created }
      else
        format.html { render :new }
        format.json { render json: @beerspot.errors, status: :unprocessable_entity }
        format.js{ render :error, status: :unprocessable_entity }
      end
    end
    
    
  end

  def comment_params
      params.require(:comment).permit(:content)
  end
end
