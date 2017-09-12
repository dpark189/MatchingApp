class HomesController < ApplicationController
  def index
    @users = User.all
    @qualifications = Qualification.all
    @match_items = Matchitem.all
  end
end
