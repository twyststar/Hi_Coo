class HicoosController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]
  respond_to :html, :js


  def index
    @hicoos = Hicoo.all
  end

  def show
    @hicoo = Hicoo.find(params[:id])
  end

  def new
    @hicoo = Hicoo.new()
  end

  def create
    @hicoo = Hicoo.new(hicoo_params)
    if @hicoo.save!
      flash[:notice] = "Hi Coo Recorded!"
      respond_to do |f|
        f.html { redirect_to home_index_path }
        f.js
      end
    else
      flash[:notice] = "Wrong number of syllables!"
      redirect_to home_index_path
    end
     
  end



  def edit
    @hicoo = Hicoo.find(params[:id])
  end

  def update
    @hicoo = Hicoo.find(params[:id])

    if @hicoo.update(hicoo_params)
      redirect_to hicoo_path(@hicoo)
      flash[:notice] = "Hi Coo Recorded!"
    else
      flash[:notice] = "Wrong number of syllables!"
      render :edit
    end
  end

  private

  def hicoo_params
    params.require(:hicoo).permit(:line_one, :line_two, :line_three, :author, :profile_id, :title)
  end
end
