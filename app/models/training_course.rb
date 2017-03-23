class TrainingCourse < ApplicationRecord
  belongs_to :training_room
  belongs_to :employee
end
