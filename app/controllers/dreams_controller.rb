class DreamsController < ApplicationController

    def index
	    @dreams = User.all
	    render json: @users
  	end

  def show
    @dream = Dream.find(params[:id])

    render json: @dream
  end

  def create
    @dream = Dream.create(name: params[:name], dream_id: params[:dream_id], content: params[:content]

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