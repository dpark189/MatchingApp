class HomesController < ApplicationController
  def index
    @users = User.all
    @qualifications = Qualification.all
    @requirements = Requirement.all
    @match_items = Matchitem.all
    @current_user = current_user
  end
end
