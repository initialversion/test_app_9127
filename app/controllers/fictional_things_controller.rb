class FictionalThingsController < ApplicationController
  before_action :set_fictional_thing, only: [:show, :edit, :update, :destroy]

  # GET /fictional_things
  # GET /fictional_things.json
  def index
    @fictional_things = FictionalThing.all
  end

  # GET /fictional_things/1
  # GET /fictional_things/1.json
  def show
  end

  # GET /fictional_things/new
  def new
    @fictional_thing = FictionalThing.new
  end

  # GET /fictional_things/1/edit
  def edit
  end

  # POST /fictional_things
  # POST /fictional_things.json
  def create
    @fictional_thing = FictionalThing.new(fictional_thing_params)

    respond_to do |format|
      if @fictional_thing.save
        format.html { redirect_to @fictional_thing, notice: 'Fictional thing was successfully created.' }
        format.json { render :show, status: :created, location: @fictional_thing }
      else
        format.html { render :new }
        format.json { render json: @fictional_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fictional_things/1
  # PATCH/PUT /fictional_things/1.json
  def update
    respond_to do |format|
      if @fictional_thing.update(fictional_thing_params)
        format.html { redirect_to @fictional_thing, notice: 'Fictional thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @fictional_thing }
      else
        format.html { render :edit }
        format.json { render json: @fictional_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fictional_things/1
  # DELETE /fictional_things/1.json
  def destroy
    @fictional_thing.destroy
    respond_to do |format|
      format.html { redirect_to fictional_things_url, notice: 'Fictional thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fictional_thing
      @fictional_thing = FictionalThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fictional_thing_params
      params.require(:fictional_thing).permit(:title)
    end
end
