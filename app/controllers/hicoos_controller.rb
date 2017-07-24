class HicoosController < ApplicationController
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
    if @hicoo.save
      flash[:notice] = "Hi Coo Recorded!"
      redirect_to hicoo_path(@hicoo)
    else
      flash[:notice] = "Your Hi Coo could not be recorded!"
      render :new
    end
  end

  def edit
    @hicoo = Hicoo.find(params[:id])
  end

  def update
    @hicoo = Hicoo.find(params[:id])

    if @hicoo.update(params)
      redirect_to hicoo_path(@hicoo)
    else
      render :edit
    end
  end

  private

  def hicoo_params
    params.require(:hicoo).permit(:line_one, :line_two, :line_three, :author, :profile_id)
  end
end
