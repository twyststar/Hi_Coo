class ProfilesController < ApplicationController
  
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      redirect_to profile_path(@profile)
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:user_name, :user_id, :avatar, :file, :file_file_name, :file_content_type, :file_file_size, :file_updated_at, :hi_quote_one, :hi_quote_two, :hi_quote_three)
  end

end
