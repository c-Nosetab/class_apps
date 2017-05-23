class CatsController < ApplicationController

  def index
    @cats = Cat.all



  end

  def new
  end

  def create
    cat = Cat.new(
                  name: params[:name],
                  age: params[:age],
                  description: params[:description],
                  price: params[:price]
                  )
    cat.save

    image = Image.new(
                      url: params[:url],
                      cat_id: cat.id
                      )
    image.save

    flash[:success] = "Cat Successfully Created"
    redirect_to "/cats/#{ cat.id }"
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    cat = Cat.find(params[:id])
    cat.assign_attributes(
                          name: params[:name],
                          age: params[:age],
                          description: params[:description],
                          price: params[:price]
                          )
    cat.save

    redirect_to "/cats/#{ cat.id }"
  end

  def destroy
    cat = Cat.find(params[:id])
    cat.destroy

    redirect_to '/'
  end

end
