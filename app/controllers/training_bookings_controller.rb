class TrainingBookingsController < ApplicationController
  def new
    @booking = TrainingBooking.new
  end

  def show
  end

  def index
    @bookings = TrainingBooking.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
