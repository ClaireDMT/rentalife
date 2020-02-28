class LivesController < ApplicationController
  def index
    @lives = Life.geocoded

    @markers = @lives.map do |life|
          {
            lat: life.latitude,
            lng: life.longitude
          }
        end
  end

  def show
    @life = Life.find(params[:id])
  end

  def new
    @life = Life.new
  end

  def create
    @life = Life.new(params_life)
    @life.user = current_user
    if @life.save
      redirect_to life_path(@life)
    else
      render :new
    end
  end


  private

  def params_life
    params.require(:life).permit(:title, :job, :city, :description, :marital_status, :kids, :accommodation_id, :social_status, photos: [])
  end
end
