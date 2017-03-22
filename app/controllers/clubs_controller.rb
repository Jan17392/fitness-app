class ClubsController < ApplicationController
  def show
    @clubs = Club.all
  end

  def index
    @clubs = Club.all
    render layout: 'application_no_club'
  end

  def new
    @club = Club.new
    render layout: false
  end

  def delete
  end

  def update
  end

  def create
    @club = Club.create!(club_params)
    redirect_to root_path
  end

  def select_club
    @clubs = Club.all
    render layout: false
  end

  def new_club
    @club = Club.new
    render layout: false
  end

  def create_club
  end

  def club_params
    params.require(:club).permit(
      :name,
      :street,
      :city,
      :postcode,
      :country,
      :street_no,
      :description
    )
  end

end
