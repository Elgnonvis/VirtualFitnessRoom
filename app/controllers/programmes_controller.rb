class ProgrammesController < ApplicationController
  before_action :set_programme, only: %i[ show edit update destroy ]

  # GET /programmes or /programmes.json
  def index
    @programmes = Programme.all
  end

  # GET /programmes/1 or /programmes/1.json
  def show
    @sessions = @programme.sessions.all
  end

  # GET /programmes/new
  def new
    @programme = Programme.new
    # @programme.session.build
    @session = @programme.sessions.build
  end

  # GET /programmes/1/edit
  def edit
    @sessions = @programme.sessions.build
  end

  # POST /programmes or /programmes.json
  def create
    @programme  = current_user.programmes.build(programme_params)
    respond_to do |format|
      if @programme.save
        format.html { redirect_to @programme, notice: "Programme was successfully created." }
        format.json { render :show, status: :created, location: @programme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programmes/1 or /programmes/1.json
  def update
    respond_to do |format|
      if @programme.update(programme_params)
        format.html { redirect_to @programme, notice: "Programme was successfully updated." }
        format.json { render :show, status: :ok, location: @programme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programmes/1 or /programmes/1.json
  def destroy
    @programme.destroy
    respond_to do |format|
      format.html { redirect_to programmes_url, notice: "Programme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programme
      @programme = Programme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programme_params
      params.require(:programme).permit(:programme_name, :programme_cost, :user_id, :programme_goal, :images, :programme_duration , :payed, sessions_attributes:[:id, :programme_id , :session_title , :session_description , :session_goals , :session_duration])
    end
end
