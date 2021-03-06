class PianosController < ApplicationController
  def index
    @pianos = Piano.all

    @pianos = Piano.where.not(latitude: nil, longitude: nil)

    @markers = @pianos.map do |piano|
      {
        lat: piano.latitude,
        lng: piano.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { piano: piano })
      }
    end
  end

  def show
    @piano = Piano.find(params[:id])
    @piano_marker = [@piano]
    @markers = @piano_marker.map do |piano|
      {
        lng: piano.longitude,
        lat: piano.latitude,
        infoWindow: render_to_string(partial: "showinfowindow", locals: { piano: piano })
      }
    end
  end

  def new
    @piano = Piano.new
  end

  def create
    # @piano = piano.new(params[:piano])
    @piano = Piano.new(piano_params)
    @piano.save

    redirect_to piano_path(@piano)
  end

  def edit
    @piano = Piano.find(params[:id])
  end

  def update
    @piano = Piano.find(params[:id])
    @piano.update(piano_params { :piano })

    redirect_to piano_path(@piano)
  end

  def destroy
    @piano = Piano.find(params[:id])
    @piano.destroy

    redirect_to pianos_path
  end

  private

  def piano_params
    params.require(:piano).permit(:address)
  end
end
