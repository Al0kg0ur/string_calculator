class CreateStringCalcs < ActiveRecord::Migration[7.1]
  def change
    create_table :string_calcs do |t|
      t.string :str_input
      t.timestamps
    end
  end
end
