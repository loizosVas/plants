class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  # GET /plants or /plants.json
  def index
    @plants = Plant.all
  end

  # GET /plants/1 or /plants/1.json
  def show
  end

  # GET /plants/new
  def new
    #@plant = Plant.new
    @plant = current_user.plants.build
  end

  # GET /plants/1/edit
  def edit
  end

  # POST /plants or /plants.json
  def create
    #@plant = Plant.new(plant_params)
    @plant = current_user.plants.build(plant_params)
    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: "Plant was successfully created." }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1 or /plants/1.json
  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: "Plant was successfully updated." }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1 or /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: "Plant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @plant = current_user.plants.find_by(id: params[:id])
    redirect_to plants_path, notice: "Not authorised to modify this plant" if @plant.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_params
      params.require(:plant).permit(
        :taxon_name, 
        :common_name, 
        :cultivation_group, 
        :general_description, 
        :nutritional_information,
        :min_preferred_pH, 
        :max_preferred_pH, 
        :water_requirements, 
        :energy_value, 
        :sunlight_requirements, 
        :temperature_class, 
        :nutrient_requirement, 
        :plant_requirements, 
        :soil, 
        :optimum_germination_temperature, 
        :days_to_germination_at_optimum_temperature, 
        :min_plant_growing_ideal_temperature, 
        :max_plant_growing_ideal_temperature, 
        :descriptive_growing_season,
        :min_length_of_growing_harvest,
        :max_length_of_growing_harvest,
        :sensitivities, 
        :desease_management, 
        :pests_pathogens, 
        :image, 
        :created_by
      )
    end
end
