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
    @listing.benefits.build
    @listing.education_levels.build
    @listing.college_majors.build
    @listing.type_of_employments.build
    @listing.build_requirement
    @listing.requirement.matchitem.build
  end

  def create
    @listing = Listing.new(listing_params)
    byebug
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing,  notice: "Listing created Successfully" }
        format.json { render action: 'show', status: :created, location: @listing }
      else
        format.html { render action: 'new' }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:job_title, :max_starting_salary, :description, :user_id, :search, benefits_attributes: [:name, :description,:_destroy], college_majors_attributes: [:name, :description,:user_id,:_destroy], education_levels_attributes: [:name, :description,:user_id,:_destroy], type_of_employments_attributes: [:name, :description,:user_id,:_destroy])
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
