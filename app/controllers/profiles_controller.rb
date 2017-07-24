class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @proflie = Profile.find(params[:id])
  end

end
