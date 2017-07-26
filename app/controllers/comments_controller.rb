class CommentsController < ApplicationController

  before_action :authenticate_user!
  respond_to :html, :js


  # def index
  #   @hicoos = Hicoo.all
  # end

  # def show
  #   @hicoo = Hicoo.find(params[:id])
  # end

  def new
    @hicoo = Hicoo.find(params[:hicoo_id])
    @comment = Comment.new()
  end

  def create
    @hicoo = Hicoo.find(params[:hicoo_id])
    @comment = Comment.new(comment_params)
    @comment.save
    @hicoo.comments.push(@comment)
    if @comment.save!
      flash[:notice] = "Comment Recorded!"
      respond_to do |f|
        f.html { redirect_to home_index_path }
        f.js
      end
    else
      flash[:notice] = "Could not record!"
      redirect_to home_index_path
    end

  end



  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @hicoo = @comment.hicoo
    if @comment.update(comment_params)
      redirect_to hicoo_path(@hicoo)
      flash[:notice] = "Comment Recorded!"
    else
      flash[:notice] = "Could not record!"
      render :edit
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:hicoo_id, :author, :content)
  end
end
