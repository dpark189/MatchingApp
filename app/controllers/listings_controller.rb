class ListingsController < ApplicationController
  before_action :company?, only: [:new, :create, :update]
  before_action :admin?, only: [:new, :create, :destroy, :update]

  autocomplete :matchitems, :name, :full => true

  def index
    @users = User.all
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
    @benefit = Benefit.new
    @college_major = CollegeMajor.new
    @education_level = EducationLevel.new
    @requirement = Requirement.new
    @matchitems = Matchitem.all
  end

  private

  def listing_params
    params.require(:listing).permit(:job_title, :max_starting_salary, :description, :user_id, :search)
  end

  def admin?
    if !current_user.admin?
      flash[:alert] = "Access denied you are not an admin"
      redirect_to (request.referrer || root_path)
    end
  end

  def user?
    if !user_signed_in?
      flash[:notice] = "You must sign in or sign up"
      redirect_to (request.referrer || root_path)
    end
  end

  def company?
    if !current_user.company?
      flash[:alert] = "Access denied you are not a company"
    end
  end
end
