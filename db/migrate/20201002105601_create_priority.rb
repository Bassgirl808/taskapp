class CreatePriority < ActiveRecord::Migration[5.0]
  def change
    create_table :priorities do |t|
      t.string :name
      t.integer :value
    end
  end
end
