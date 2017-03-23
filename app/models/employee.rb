class Employee < ApplicationRecord
  belongs_to :employee_type
  belongs_to :club
end
