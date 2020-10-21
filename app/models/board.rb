class Board < ApplicationRecord
    has_many :task_lists, dependent: :destroy
end
