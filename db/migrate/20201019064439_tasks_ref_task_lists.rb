class TasksRefTaskLists < ActiveRecord::Migration[5.0]
  def up
    change_table :tasks do |t|
      t.remove :board
      t.references :task_lists, references: :task_lists
    end
  end
  def down
    raise ActiveRecord::IrreversibleMigration, "Can't change references."
  end
end
