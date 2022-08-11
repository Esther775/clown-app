class BookingsController < ApplicationController
  def index
    booking = Booking.all

    render json: booking.as_json
  end

  def show
    booking = Booking.find_by(id: params[:id])

    render json: booking.as_json
  end

  def create
    booking = Booking.new(
      clown_id: params[:clown_id],
      user_id: params[:user_id],
      time: params[:time],
      price: params[:price],
      event: params[:event],
    )
    booking.save
    render json: booking.as_json
  end
end
