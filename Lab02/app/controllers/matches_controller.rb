class MatchesController < ApplicationController
  skip_before_action :verify_authenticity_token
  respond_to :json
  
  def index
	@matchs = Match.all
    respond_with @matchs
  end

  def show	
	@match = Match.find(params[:id])
    respond_with @match
  end

  def create
	@date = params[:match][:date_game]
    @phase = params[:match][:phase]
    @status = params[:match][:status]
    @local_team = params[:match][:local_team]
    @visit_team = params[:match][:visit_team]
    @score = params[:match][:score]
    @winner = params[:match][:winner]
    @looser = params[:match][:looser]
    @draw = params[:match][:draw]
    @group = params[:match][:group]
    @stadium = params[:match][:stadium_id]
    @match = Match.new(
      {
        :date_game => @date,
        :phase => @phase,
        :state => @status,
        :local_team => @local_team,
        :visit_team => @visit_team,
        :score => @score,
        :winner => @winner,
        :looser => @looser,
        :draw => @draw,
        :group => @group,
        :stadium_id => @stadium
      })
    if match.save
      render "show"
    else
      render "index"
    end
  end

  def update
	@match = find(params[:match][:id])
    @match.date_game = params[:match][:date_game]
    @match.phase = params[:match][:phase]
    @match.status = params[:match][:status]
    @match.local_team = params[:match][:local_team]
    @match.visit_team = params[:match][:visit_team]
    @match.score = params[:match][:score]
    @match.winner = params[:match][:winner]
    @match.looser = params[:match][:looser]
    @match.draw = params[:match][:draw]
    @match.group = params[:match][:group]
    @match.stadium_id = params[:match][:stadium_id]
    if match.save
      render "show"
    else
      render "index"
    end
  end

  def delete
	@match = find(params[:match][:id])
    if @stadium.destroy
      render "show"
    else
      render "index"
    end
  end
end
