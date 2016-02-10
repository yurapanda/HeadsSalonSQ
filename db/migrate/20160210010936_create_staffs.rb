class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :expertise
      t.text :description

      t.timestamps null: false
    end
  end
end
