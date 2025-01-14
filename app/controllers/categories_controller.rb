class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :delete]

  def index
    @categories = Category.all
  end

  def show; end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      # want to add different message
      # currently says "Name can't be blank and Name has already been taken"
      render :new, status: :unprocessable_entity
    end
  end

  # shouldn't we be able to delete a category?
  def delete
    @category.destroy
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :image_url)
  end
end
