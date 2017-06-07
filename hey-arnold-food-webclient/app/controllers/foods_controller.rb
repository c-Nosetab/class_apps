class FoodsController < ApplicationController

  def index
    @foods = Unirest.get("localhost:3000/api/v2/thing.json").body
  end

  def new
  end

  def create
    response = Unirest.post("localhost:3000/api/v1/thing?name=#{params[:name]}&spice=#{params[:spice]}",
                            headers: {"Accept" => "application/json"}
                            )

    redirect_to "/foods"
  end

  def show
    @food = Unirest.get("localhost:3000/api/v2/thing/#{params[:id]}.json").body
  end

  def edit
    @food = Unirest.get("localhost:3000/api/v2/thing/#{params[:id]}.json").body

  end

  def update
    food = Unirest.get("localhost:3000/api/v2/thing/#{params[:id]}.json").body
    @food
  end

  def destroy

  end


end
