class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def edit
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(team_params)
    if !@team.save
      flash[:notice] = 'team was not saved'
      #Add redirect?
    end
  end

  def update
    @team.update(team_params)
  end

  def destroy
    @team.destroy
  end

  private

  def team_params
    params[:team].permit(:students)
  end
end
