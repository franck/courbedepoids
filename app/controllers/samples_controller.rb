class SamplesController < ApplicationController
  
  before_filter :authenticate
  
  def index
    @samples = current_user.samples.order("sampled_at asc")
    @data = current_user.samples.order("sampled_at desc").page(params[:page]).per_page(30)
    @sample = current_user.samples.build
    @sample.sampled_at = Time.now.strftime('%d/%m/%Y')
  end
  
  def new
    @sample = Sample.new
    @sample.sampled_at = Time.now.strftime('%d/%m/%Y')
  end
  
  def create
    @sample = Sample.new(params[:sample])
    if @sample.save
      redirect_to samples_path
    else
      render :new
    end
  end
  
  def edit
    @sample = Sample.find(params[:id])
  end
  
  def update
    @sample = Sample.find(params[:id])
    if @sample.update_attributes(params[:sample])
      redirect_to samples_path
    else
      render :edit
    end
  end
  
  def destroy
    sample = Sample.find(params[:id])
    sample.destroy
    redirect_to samples_path
  end
  
  
end
