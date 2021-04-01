class DogsController < ApplicationController
  def index
    json_response(Dog.all)
  end

  def create
    @dog = Dog.create!(dog_params)
    json_response(@dog, :created)
  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def dog_params
    params.permit(:breed, :name, :size)
  end
end