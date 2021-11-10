class DevelopersController < ApplicationController
  before_action :set_developers, only: [:show, :destroy]

  def index
    @developers = Developer.all
  end

  def show
    # @developer = @developer.image
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
    @developer.save
    redirect_to developers_path(@developer)
  end

  def destroy
    @developer.destroy
    redirect_to developers_path(@developer)
  end

  private

  def developer_params
    params.require(:developer).permit(:name, :position, :description, :level, :age, :startday, :salary, :image)
  end

  def set_developers
    @developer = Developer.find(params[:id])
  end
end
