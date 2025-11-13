class CreateApplications < ActiveRecord::Migration[7.2]
  def change
    create_table :applications do |t|
      t.references :job, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :phone
      t.string :resume_url
      t.text :message

      t.timestamps
    end
  end
end
