class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      # Completa con las columnas que necesites
      t.string :anagrama
      t.string :canonica
    end
  end
end


