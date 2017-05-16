class ItemsController < ApplicationController

  def index
    @houses = Item.all

    sort_attribute = params[:sort]
    sort_order = params[:order]
    search = params[:search]

    if search
      @houses = @houses.where("bedrooms iLIKE ?", "%#{search}%")
    end

    if sort_attribute && sort_order
      @houses = @houses.order(sort_attribute => sort_order)
    elsif sort_attribute
      @houses = @houses.order(sort_attribute)
    end

  end

  def new
  end

  def create
    house = Item.new(description: params[:description],
                           year_built: params[:year_built],
                           square_feet: params[:square_feet],
                           bedrooms: params[:bedrooms],
                           bathrooms: params[:bathrooms],
                           floors: params[:floors],
                           availability: params[:availability],
                         price: params[:price]
                          )
    house.save

    redirect_to "houses/#{house.id}"
  end

  def show
    @house = Item.find(params[:id])
  end

  def edit
    @house = Item.find(params[:id])
  end

  def update
    house = Item.find(params[:id])
    house.assign_attributes(description: params[:description],
                           year_built: params[:year_built],
                           square_feet: params[:square_feet],
                           bedrooms: params[:bedrooms],
                           bathrooms: params[:bathrooms],
                           floors: params[:floors],
                           availability: params[:availability],
                           price: params[:price]
                           )
    house.save

    redirect_to "/houses/#{house.id}"
  end

  def destroy
    house = Item.find(params[:id])
    house.delete
  end




end
