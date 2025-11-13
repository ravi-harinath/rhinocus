class CreateJobs < ActiveRecord::Migration[7.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.string :exp_required
      t.text :skills
      t.text :description

      t.timestamps
    end
  end
end
