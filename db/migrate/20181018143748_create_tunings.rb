class CreateTunings < ActiveRecord::Migration[5.2]
  def change
    create_table :tunings do |t|
      t.string :title
      t.string :string0, array: true, default: []
      t.string :string1, array: true, default: []
      t.string :string2, array: true, default: []
      t.string :string3, array: true, default: []
      t.string :string4, array: true, default: []
      t.string :string5, array: true, default: []

      t.timestamps
    end
  end
end
