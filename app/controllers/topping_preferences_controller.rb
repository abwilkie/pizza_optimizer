class ToppingPreferencesController < ApplicationController
  before_action :set_topping_preference, only: [:show, :edit, :update, :destroy]

  # GET /ToppingPreferences
  # GET /ToppingPreferences.json
  def index
    @topping_preferences = ToppingPreference.order('rating desc')
  end

  # GET /topping_preferences/1
  # GET /topping_preferences/1.json
  def show
  end

  # GET /topping_preferences/new
  def new
    @topping_preference = ToppingPreference.new
  end

  # GET /topping_preferences/1/edit
  def edit
  end

  # POST /topping_preferences
  # POST /topping_preferences.json
  def create
    @topping_preference = ToppingPreference.find_or_initialize_by(topping_preference_params)

    respond_to do |format|
      if @topping_preference.save
        format.html { redirect_to @topping_preference, notice: 'Preference was successfully created.' }
        format.json { render :show, status: :created, location: @topping_preference }
      else
        format.html { render :new }
        format.json { render json: @topping_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topping_preferences/1
  # PATCH/PUT /topping_preferences/1.json
  def update
    respond_to do |format|
      if @topping_preference.update(topping_preference_params)
        format.html { redirect_to @topping_preference, notice: 'Preference was successfully updated.' }
        format.json { render :show, status: :ok, location: @topping_preference }
      else
        format.html { render :edit }
        format.json { render json: @topping_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topping_preferences/1
  # DELETE /topping_preferences/1.json
  def destroy
    @topping_preference.destroy
    respond_to do |format|
      format.html { redirect_to topping_preferences_url, notice: 'Preference was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topping_preference
      @topping_preference = ToppingPreference.find(params['id'])
#      format.html { redirect_to topping_preferences_url, notice: "User is #{params[:user_id]}." }
#      User.find(params[:user_id]).add_topping_ToppingPreference(params[:topping_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topping_preference_params
      params.require(:topping_preference).permit(:user_id, :topping_id, :rating)
    end
end
