class EmployeesController < ApplicationController
  def show
  end

  def index
    @employees = Employee.all
  end

  def destroy
  end

  def create
  end

  def new
    @employee = Employee.new
  end

  def update
  end
end
