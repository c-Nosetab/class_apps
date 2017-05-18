class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
  end

  def create
    dog = Dog.new(species: params[:species],
                  name: params[:name],
                  age: params[:age],
                  image: params[:image]
                  )
    dog.save

    redirect_to "/dogs/#{dog.id}"
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    dog = Dog.find(params[:id])
    dog.assign_attributes(species: params[:species],
                          name: params[:name],
                          age: params[:age],
                          image: params[:image]
                          )
    dog.save

    redirect_to "/dogs/#{dog.id}"
  end

  def destroy
    dog = Dog.find(params[:id])
    dog.destroy

    redirect_to '/'
  end


end
