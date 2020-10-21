class DeleteTaskListsId < ActiveRecord::Migration[5.0]
  def up
    change_table :tasks do |t|
      t.remove :task_lists_id
    end
  end
  def down
    raise ActiveRecord::IrreversibleMigration, "Can't change references."
  end
end
