class ListingsController < ApplicationController
  def index
    @users = User.all
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

end
