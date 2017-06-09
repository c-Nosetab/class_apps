class FoodsController < ApplicationController

  def index
    @foods = Food.all

  end

  def new
  end

  def create
    response = Unirest.post("#{ENV["API_HOST"]}/api/v1/thing?name=#{params[:name]}&spice=#{params[:spice]}",
                            headers: {"Accept" => "application/json"}
                            )

    redirect_to "/foods"
  end

  def show
    @food = Food.find(params[:id])

    p "qqqqqqqqqqqqqqqq"
    p @food
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.new(Unirest.get("#{ENV["API_HOST"]}/api/v2/thing/#{params[:id]}.json").body)


    redirect_to '/foods'
  end

  def destroy
    food = Food.find(params[:id])
    food.delete

    redirect_to '/'
  end


end
