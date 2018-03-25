class MastersController < ApplicationController


  def index
    @masters = Master.all
    render json: @masters
  end

  def show
    @master = Master.find(params[:id])
    render json: @master
  end

  def create
    @master = Master.new(master_params)
    if @master.save
      render json: @master
    else
      render json: {error: "Couldn't save."}
    end
  end

  def update
    @master = Master.find(params[:id])
    @master.update(master_params)
    render json: @master
  end

  def destroy
    @master = Master.find(params[:id])
    @master.destroy
    render json: {alert: "Has been deleted."}
  end

  private

  def master_params
    params.require(:master).permit(:order_id, :name, :years_lived, :description, :img_url)
  end


end
