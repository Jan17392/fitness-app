class EmployeeTypesController < ApplicationController
  def new
    @type = EmployeeType.new
  end

  def show
  end

  def index
    @types = EmployeeType.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
