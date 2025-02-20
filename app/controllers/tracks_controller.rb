# frozen_string_literal: true

class TracksController < ApplicationController
  def index
    @tracks = Track.order(:order_number)
    render :index
  end

  def show
    @track = Track.find(params[:id])
    render :show
  end

  def new
    @track = Track.new
    render :new
  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def create
    @track = Track.new(params.require(:track).permit(:order_number, :title, :artist, :length_in_seconds))

    if @track.save
      flash[:success] = 'New track successfully added!'
      redirect_to tracks_url
    else
      flash.now[:error] = 'Track creation failed.'
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(params.require(:track).permit(:order_number, :title, :artist, :length_in_seconds))
      flash[:success] = 'Track successfully updated!'
      redirect_to track_url(@track)
    else
      flash.now[:error] = 'Track update failed.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    flash[:success] = 'Track successfully removed'
    redirect_to tracks_url, status: :see_other
  end
end
