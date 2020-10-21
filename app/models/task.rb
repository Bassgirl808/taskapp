class Task < ApplicationRecord
  has_and_belongs_to_many :priorities
  belongs_to :task_lists
end
