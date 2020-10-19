class CreateTaskLists < ActiveRecord::Migration[5.0]
  def change
    create_table :task_lists do |t|
      t.string :name
      t.references :board, references: :board
    end
  end
end
