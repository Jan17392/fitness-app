class TrainingCoursesController < ApplicationController
  def new
    @course = TrainingCourse.new
  end

  def show
  end

  def index
    @courses = TrainingCourse.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
