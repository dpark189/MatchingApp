class ListingsController < ApplicationController
  def index
    @users = User.all
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

end
