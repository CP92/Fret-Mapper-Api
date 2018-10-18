class AddUserToTunings < ActiveRecord::Migration[5.2]
  def change
    add_reference :tunings, :user, foreign_key: true
  end
end
