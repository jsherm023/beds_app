class Api::BedsController < ApplicationController
  def index
    @beds = Bed.all 
    render "index.json.jbuilder"
  end

  def create
    @bed = Bed.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      size: params[:size]
    )
    @bed.save
    render "show.json.jbuilder"
  end

  def show
    @bed = Bed.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @bed = Bed.find_by(id:params[:id])
    @bed.update(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      size: params[:size]
      )
    render "show.json.jbuilder"
  end

  def destroy
    @bed = Bed.find_by(id:params[:id])
    @bed.destroy
    render json: {message: "Your bed has been destroyed"}
  end
end

