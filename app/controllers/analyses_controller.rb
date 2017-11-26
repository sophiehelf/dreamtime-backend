class AnalysesController < ApplicationController

  def index
	@analyses = Analysis.all
	render json: @analyses
  end

  def show
    @analysis = Analyses.find(params[:user_id])

    render json: @analysis
  end

  def create
    @analysis = Analysis.create(name: params[:name], id: params[:id], content: params[:content])

    render json: @dream
  end

  def update
    @dream = Dream.find(params[:dream_id])
    @dream.save

    render json: @dream
  end

  def destroy
    @dream = Dream.find(params[:dream_id])
    @dream.destroy
  end

  private

  def permitted_params
    params.require(:results).permit!
  end

end