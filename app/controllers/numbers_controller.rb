class NumbersController < ApplicationController
  before_action :set_number, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @numbers = Number.all
    respond_with(@numbers)
  end

  def show
    respond_with(@number)
  end

  def new
    @number = Number.new
    respond_with(@number)
  end

  def edit
  end

  def create
    @number = Number.new(number_params)
    @number.save
    respond_with(@number)
  end

  def update
    @number.update(number_params)
    respond_with(@number)
  end

  def destroy
    @number.destroy
    respond_with(@number)
  end

  private
    def set_number
      @number = Number.find(params[:id])
    end

    def number_params
      params.require(:number).permit(:tfn, :site_id, :description, :active, :dnis)
    end
end
