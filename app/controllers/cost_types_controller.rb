class CostTypesController < ApplicationController
  before_action :set_cost_type, only: %i[ show edit update destroy ]

  # GET /cost_types or /cost_types.json
  def index
    @cost_types = CostType.all
  end

  # GET /cost_types/1 or /cost_types/1.json
  def show
  end

  # GET /cost_types/new
  def new
    @cost_type = CostType.new
  end

  # GET /cost_types/1/edit
  def edit
  end

  # POST /cost_types or /cost_types.json
  def create
    @cost_type = CostType.new(cost_type_params)

    respond_to do |format|
      if @cost_type.save
        format.html { redirect_to @cost_type, notice: "Cost type was successfully created." }
        format.json { render :show, status: :created, location: @cost_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cost_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cost_types/1 or /cost_types/1.json
  def update
    respond_to do |format|
      if @cost_type.update(cost_type_params)
        format.html { redirect_to @cost_type, notice: "Cost type was successfully updated." }
        format.json { render :show, status: :ok, location: @cost_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cost_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_types/1 or /cost_types/1.json
  def destroy
    @cost_type.destroy!

    respond_to do |format|
      format.html { redirect_to cost_types_path, status: :see_other, notice: "Cost type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost_type
      @cost_type = CostType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cost_type_params
      params.require(:cost_type).permit(:name, :description)
    end
end
