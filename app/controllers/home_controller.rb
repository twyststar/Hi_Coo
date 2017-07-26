class HomeController < ApplicationController

  def index
    @profile = current_user.profile
    @hicoos = Hicoo.all
    
  end
end
