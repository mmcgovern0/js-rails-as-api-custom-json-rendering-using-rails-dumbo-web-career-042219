class BirdsController < ApplicationController
  # def index
  #   birds = Bird.all
  #   render json: birds, only: [:id, :name, :species]
  # end

  def index
    birds = Bird.all
    render json: birds, except: [:created_at, :updated_at]
  end

  # def show
  #   bird = Bird.find(params[:id])
  #   render json: {id: bird.id, name: bird.name, species: bird.species}
  # end

  def show
    bird = Bird.find(params[:id])
    if bird
      render json: {id: bird.id, name: bird.name, species: bird.species}
    else
      render json: { message: 'Bird not found' }
    end
  end

end