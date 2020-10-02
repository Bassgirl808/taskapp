class CreateJoinTableTasksPriorities < ActiveRecord::Migration[5.0]
  def change
    create_join_table :tasks, :priorities do |t|
      # t.index [:task_id, :priority_id]
      # t.index [:priority_id, :task_id]
    end
  end
end
