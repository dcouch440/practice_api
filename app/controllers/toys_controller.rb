class ToysController < ApplicationController
# @dog was removed

  def index
    json_response(dog.toys)
  end

  def create
    toy = dog.toys.create!(toy_params)
    json_response(toy, :created)
  end

  def show
    toy = Toy.find(params[:id])
    json_response(toy)
  end

  def update
    toy = Toy.find(params[:id]).update!(toy_params)
    json_response(toy, :created)
  end

  def destroy
    Toy.find(params[:id]).destroy!
  end

  private

  def dog
    dog ||= Dog.find(params[:dog_id])
  end

  def toy_params
    params.permit(:melee, :ranged, :dog_id)
  end
end