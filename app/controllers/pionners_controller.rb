class PionnersController < ApplicationController
  before_action :set_pionner, only: [:show, :edit, :update, :destroy]

  # GET /pionners
  # GET /pionners.json
  def index
    @pionners = Pionner.all
  end

  # GET /pionners/1
  # GET /pionners/1.json
  def show
  end

  # GET /pionners/new
  def new
    @pionner = Pionner.new
  end

  # GET /pionners/1/edit
  def edit
  end

  # POST /pionners
  # POST /pionners.json
  def create
    @pionner = Pionner.new(pionner_params)

    respond_to do |format|
      if @pionner.save
        format.html { redirect_to @pionner, notice: 'Pionner was successfully created.' }
        format.json { render :show, status: :created, location: @pionner }
      else
        format.html { render :new }
        format.json { render json: @pionner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pionners/1
  # PATCH/PUT /pionners/1.json
  def update
    respond_to do |format|
      if @pionner.update(pionner_params)
        format.html { redirect_to @pionner, notice: 'Pionner was successfully updated.' }
        format.json { render :show, status: :ok, location: @pionner }
      else
        format.html { render :edit }
        format.json { render json: @pionner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pionners/1
  # DELETE /pionners/1.json
  def destroy
    @pionner.destroy
    respond_to do |format|
      format.html { redirect_to pionners_url, notice: 'Pionner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pionner
      @pionner = Pionner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pionner_params
      params.require(:pionner).permit(:first_name, :last_name)
    end
end
