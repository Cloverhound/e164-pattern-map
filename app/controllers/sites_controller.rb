class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sites = Site.all
    respond_with(@sites)
  end

  def numbers
      @numbers = Site.find(params[:id]).numbers
  end
  
  def numbers_ios
      @numbers = Site.find(params[:id]).numbers
      render :layout => 'blank'
  end

  def show
    respond_with(@site)
  end

  def new
    @site = Site.new
    respond_with(@site)
  end

  def edit
  end

  def create
    @site = Site.new(site_params)
    @site.save
    respond_with(@site)
  end

  def update
    @site.update(site_params)
    respond_with(@site)
  end

  def destroy
    @site.destroy
    respond_with(@site)
  end

  private
    def set_site
      @site = Site.find(params[:id])
    end

    def site_params
      params.require(:site).permit(:name)
    end
end
