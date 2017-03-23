class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
  end

  def update
  end

  def create
    @customer = Customer.create!(customer_params)
    redirect_to root_path
  end

  def delete
  end

  def new
    @club = params[:club_id]
    @customer = Customer.new
  end

  def customer_params
    params.require(:customer).permit(
      :first_name,
      :last_name,
      :email,
      :phone_home,
      :phone_mobile,
      :birthdate,
      :gender,
      :photo,
      :club_id
    )
  end
end
