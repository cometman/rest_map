class MapsController < ApplicationController
  def view
  end

  def plot
    @result = Plot.create(params.permit(:latitude, :longitude, :namespace, :comment, :value, :tags))
    respond_to do |format|
      format.json { render :json => {:message => "Plot added"} }
    end
  end

  def list
    @plots = Plot.all
    respond_to do |format|
      format.json { render :json => @plots }
    end
  end
end
