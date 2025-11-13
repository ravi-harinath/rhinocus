class CreateServices < ActiveRecord::Migration[7.2]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.string :icon

      t.timestamps
    end
  end
end
