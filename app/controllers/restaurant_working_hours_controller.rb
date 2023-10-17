class RestaurantWorkingHoursController < ApplicationController
  before_action :set_restaurant_working_hour, only: %i[ show edit update destroy ]

  # GET /restaurant_working_hours or /restaurant_working_hours.json
  def index
    @restaurant_working_hours = RestaurantWorkingHour.all
  end

  # GET /restaurant_working_hours/1 or /restaurant_working_hours/1.json
  def show
  end

  # GET /restaurant_working_hours/new
  def new
    @restaurant_working_hour = RestaurantWorkingHour.new
  end

  # GET /restaurant_working_hours/1/edit
  def edit
  end

  # POST /restaurant_working_hours or /restaurant_working_hours.json
  def create
    @restaurant_working_hour = RestaurantWorkingHour.new(restaurant_working_hour_params)

    respond_to do |format|
      if @restaurant_working_hour.save
        format.html { redirect_to restaurant_working_hour_url(@restaurant_working_hour), notice: "Restaurant working hour was successfully created." }
        format.json { render :show, status: :created, location: @restaurant_working_hour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant_working_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_working_hours/1 or /restaurant_working_hours/1.json
  def update
    respond_to do |format|
      if @restaurant_working_hour.update(restaurant_working_hour_params)
        format.html { redirect_to restaurant_working_hour_url(@restaurant_working_hour), notice: "Restaurant working hour was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant_working_hour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant_working_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_working_hours/1 or /restaurant_working_hours/1.json
  def destroy
    @restaurant_working_hour.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_working_hours_url, notice: "Restaurant working hour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_working_hour
      @restaurant_working_hour = RestaurantWorkingHour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_working_hour_params
      params.require(:restaurant_working_hour).permit(:restaurant_id, :day_id, :opening_time, :closing_time)
    end
end
