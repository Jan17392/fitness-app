class ClubsController < ApplicationController
  def show
  end

  def index
    @clubs = Club.where(user_id: current_user.id)
  end

  def new
    @club = Club.new
    render layout: 'club_selection'
  end

  def delete
  end

  def update
  end

  def create
    @club = Club.create(club_params)
    redirect_to root_path
  end

  def select_club
    @clubs = Club.where(user_id: current_user.id)
    render layout: 'club_selection'
  end

  def club_params
    params.require(:club).permit(
      :name,
      :street,
      :city,
      :postcode,
      :country,
      :street_no,
      :description,
      :user_id
    )
  end

end
