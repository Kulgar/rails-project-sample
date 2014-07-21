class SavedGamesController < ApplicationController
  before_action :set_saved_game, only: [:show, :edit, :update, :destroy]

  # GET /saved_games
  # GET /saved_games.json
  def index
    @saved_games = SavedGame.all
  end

  # GET /saved_games/1
  # GET /saved_games/1.json
  def show
  end

  # GET /saved_games/new
  def new
    @saved_game = SavedGame.new
  end

  # GET /saved_games/1/edit
  def edit
  end

  # POST /saved_games
  # POST /saved_games.json
  def create
    @saved_game = SavedGame.new(saved_game_params)

    respond_to do |format|
      if @saved_game.save
        format.html { redirect_to @saved_game, notice: 'Saved game was successfully created.' }
        format.json { render :show, status: :created, location: @saved_game }
      else
        format.html { render :new }
        format.json { render json: @saved_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_games/1
  # PATCH/PUT /saved_games/1.json
  def update
    respond_to do |format|
      if @saved_game.update(saved_game_params)
        format.html { redirect_to @saved_game, notice: 'Saved game was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_game }
      else
        format.html { render :edit }
        format.json { render json: @saved_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_games/1
  # DELETE /saved_games/1.json
  def destroy
    @saved_game.destroy
    respond_to do |format|
      format.html { redirect_to saved_games_url, notice: 'Saved game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_game
      @saved_game = SavedGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saved_game_params
      params.require(:saved_game).permit(:user_id, :image_1, :image_2, :image_3, :image_4)
    end
end
