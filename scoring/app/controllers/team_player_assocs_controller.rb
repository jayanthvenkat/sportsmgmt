class TeamPlayerAssocsController < ApplicationController
  # GET /team_player_assocs
  # GET /team_player_assocs.json
  def index
    @team_player_assocs = TeamPlayerAssoc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_player_assocs }
    end
  end

  # GET /team_player_assocs/1
  # GET /team_player_assocs/1.json
  def show
    @team_player_assoc = TeamPlayerAssoc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_player_assoc }
    end
  end

  # GET /team_player_assocs/new
  # GET /team_player_assocs/new.json
  def new
    @team_player_assoc = TeamPlayerAssoc.new
    @team_player_assoc.player_id = params[:playerId]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_player_assoc }
    end
  end

  # GET /team_player_assocs/1/edit
  def edit
    @team_player_assoc = TeamPlayerAssoc.find(params[:id])
  end

  # POST /team_player_assocs
  # POST /team_player_assocs.json
  def create
    @team_player_assoc 	= TeamPlayerAssoc.new(params[:team_player_assoc])

    respond_to do |format|
      if @team_player_assoc.save
        format.html { redirect_to @team_player_assoc, notice: 'Team player assoc was successfully created.' }
        format.json { render json: @team_player_assoc, status: :created, location: @team_player_assoc }
      else
        format.html { render action: "new" }
        format.json { render json: @team_player_assoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_player_assocs/1
  # PUT /team_player_assocs/1.json
  def update
    @team_player_assoc = TeamPlayerAssoc.find(params[:id])

    respond_to do |format|
      if @team_player_assoc.update_attributes(params[:team_player_assoc])
        format.html { redirect_to @team_player_assoc, notice: 'Team player assoc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_player_assoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_player_assocs/1
  # DELETE /team_player_assocs/1.json
  def destroy
    @team_player_assoc = TeamPlayerAssoc.find(params[:id])
    @team_player_assoc.destroy

    respond_to do |format|
      format.html { redirect_to team_player_assocs_url }
      format.json { head :no_content }
    end
  end
end
