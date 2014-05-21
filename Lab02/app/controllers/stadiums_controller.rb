class StadiumsController < ApplicationController
  skip_before_action :verify_authenticity_token
  respond_to :json
  
  def index
	@stadia = Stadium.all
    respond_with @stadia
  end

  def show
	@stadium = Stadium.find(params[:id])
    respond_with @stadium
  end

  def create
	@name = params[:stadium][:name_stadium]
    @city = params[:stadium][:city]
    @date_build = params[:stadium][:date_build]
    @max_capacity = params[:stadium][:max_capacity]
    @photo = params[:stadium][:photo]
    @stadium = Stadium.new(
      {
        :name_stadium => @name,
        :city => @city,
        :date_build => @date_build,
        :max_capacity => @max_capacity,
        :photo => @photo
      })
    if @stadium.save
      render "show"
    else
      render "index"
    end
  end

  def update
	@stadium = find(params[:stadium][:id])
    @stadium.name_stadium = params[:stadium][:name_stadium]
    @stadium.city = params[:stadium][:city]
    @stadium.date_build = params[:stadium][:date_build]
    @stadium.max_capacity = params[:stadium][:max_capacity]
    @stadium.photo = params[:stadium][:photo]
    if @stadium.save
      render "show"
    else
      render "index"
    end
  end

  def delete
	@stadium = Stadium.find(params[:stadium][:id])
    if @stadium.destroy
      render "show"
    else
      render "index"
    end
  end
end
