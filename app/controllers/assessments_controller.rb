class AssessmentsController < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]

  # GET /assessments
  # GET /assessments.json
  def index
#    @assessments = Assessment.all
  end

  def handle
    user_id = params[:assessment][:user_id]
    if params[:assessment][:master_tick].nil?

    else
      params[:assessment][:master_tick].each do |tick|
        behavior_id = tick.first
        user_tick   = false
        master_tick = tick.last == '1' ? true : false
        a = Assessment.new user_id: user_id, behavior_id: behavior_id, user_tick: user_tick, master_tick: master_tick
        a.save
      end
    end
    user = User.find user_id
#    redirect_to :report_user
    redirect_to :controller => 'assessments', :action => 'report_user', :user_id => user_id
  end

  def reports
    @assessments = Assessment.where(user_id: session[:user_id]) unless session[:user_id].nil?
  end

  def set_user
    session[:user_id]     = params[:user][:user_id]
    session[:position_id] = User.find(session[:user_id]).position_id
    session[:level_id]    = User.find(session[:user_id]).level_id

    # To accumulate levels
    if 1 == 2                # NOT NEEDED!
      level_name      = Level.find(session[:level_id]).name
      novice_id       = Level.where(name: 'novice').first.id
      specialist_id   = Level.where(name: 'specialist').first.id
      professional_id = Level.where(name: 'professional').first.id
      expert_id       = Level.where(name: 'expert').first.id

      session[:levels] = []
      case level_name
      when 'novice'
        session[:levels] = [novice_id]
      when 'specialist'
        session[:levels] = [novice_id, specialist_id]
      when 'professional'
        session[:levels] = [novice_id, specialist_id, professional_id]
      when 'expert'
        session[:levels] = [novice_id, specialist_id, professional_id, expert_id]
      else
        # nothing here
      end
    end
    redirect_to :back
  end

  def report_user
    @user        = User.find params[:user_id]
    @level       = Level.find @user.level_id
    @position    = Position.find @user.position_id
    @assessments = Assessment.where(user_id: @user.id)
  end


  # GET /assessments/1
  # GET /assessments/1.json
  def show
  end

  # GET /assessments/new
  def new
    @assessment = Assessment.new
  end

  # GET /assessments/1/edit
  def edit
  end

  # POST /assessments
  # POST /assessments.json
  def create
    @assessment = Assessment.new(assessment_params)

    respond_to do |format|
      if @assessment.save
        format.html { redirect_to @assessment, notice: 'Assessment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assessment }
      else
        format.html { render action: 'new' }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assessments/1
  # PATCH/PUT /assessments/1.json
  def update
    respond_to do |format|
      if @assessment.update(assessment_params)
        format.html { redirect_to @assessment, notice: 'Assessment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessments/1
  # DELETE /assessments/1.json
  def destroy
    @assessment.destroy
    respond_to do |format|
      format.html { redirect_to assessments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment
      @assessment = Assessments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessment_params
      params.require(:assessment).permit(:user_id, :behavior_id, :user_tick, :master_tick)
    end
end
