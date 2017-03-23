class TrainingBooking < ApplicationRecord
  belongs_to :training_course
  belongs_to :customer
end
