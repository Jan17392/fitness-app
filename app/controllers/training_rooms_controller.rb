class TrainingRoomsController < ApplicationController
  def new
    @room = TrainingRoom.new
  end

  def show
  end

  def index
    @rooms = TrainingRoom.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
