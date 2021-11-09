class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def show
    @developer = Developer.find(params[:id])
    @developer = @developer.images.all
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
    @developer = Developer.find(params[:id])
    @developer.destroy
    redirect_to developers_path(@developer)
  end

  private

  def developer_params
    params.require(:developer).permit(:name, :position, :description, :level, :age, :startday, :salary, :images)
  end
end
