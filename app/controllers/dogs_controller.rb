class DogsController < ApplicationController

  def index
    json_response(Dog.all)
  end

  def create
    dog = Dog.create!(dog_params)
    json_response(dog, :created)
  end

  def show
    dog = Dog.find(params[:id])
    json_response(dog)
  end

  def update
    dog = Dog.find(params[:id]).update!(dog_params)
    json_response(dog, :created)
  end

  def destroy
    Dog.find(params[:id]).destroy!
  end

  private

  def dog_params
    params.permit(:breed, :name, :size)
  end

end