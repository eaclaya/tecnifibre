class MatchesController < ApplicationController
  before_action :set_match, only: %i[ show edit update destroy ]

  # GET /matches or /matches.json
  def index
    @matches = Match.all
  end

  # GET /matches/1 or /matches/1.json
  def show
    @tours = Tour.all
  end

  # GET /matches/new
  def new
    @match = Match.new
    @tours = Tour.all
  end

  # GET /matches/1/edit
  def edit
    @tours = Tour.all
  end

  # POST /matches or /matches.json
  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to match_url(@match), notice: "Match was successfully created." }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1 or /matches/1.json
  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to match_url(@match), notice: "Match was successfully updated." }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1 or /matches/1.json
  def destroy
    @match.destroy

    respond_to do |format|
      format.html { redirect_to matches_url, notice: "Match was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def filter
    matches = Match.where('player_one_id = ? OR player_two_id = ?', params[:player_one], params[:player_one])
    matches = matches.where('player_one_id = ? OR player_two_id = ?', params[:player_two], params[:player_two]) if params[:player_two].present?
    respond_to do |format|
      # format.json {render :json => matches.count}
      format.json { render partial: 'matches', formats: [:html, :js], locals: {matches: matches}}
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def match_params
      params.require(:match).permit(:player_one_id, :player_two_id, :player_one_game_score, :player_two_game_score, :player_one_set_score, :player_two_set_score, :player_one_match_score, :player_two_match_score, :player_one_name, :player_two_name, :sets, :games, :date)
    end
end
