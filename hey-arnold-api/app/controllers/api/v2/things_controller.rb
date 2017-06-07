class Api::V2::ThingsController < ApplicationController

  def index
    @thing = Quote.all
  end

  def create
    @thing = Quote.create(
                          name: params[:name],
                          quote: params[:spice]
                          )

    render :show
  end

  def show
    @thing = Quote.find(params[:id])
  end

  def update
    @thing = Quote.find(params[:id])
    @thing.update(
                  name: params[:name],
                  quote: params[:spice]
                 )

    render :show

  end

  def destroy
    @thing = Quote.find(params[:id])
    @thing.destroy

    render :show
  end

end
