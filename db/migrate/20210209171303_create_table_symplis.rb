class CreateTableSymplis < ActiveRecord::Migration[6.1]
  def change
    create_table :table_symplis do |t|
      t.string :dta
      t.string :dna
      t.string :dte
      t.string :dne
      t.string :nde
      t.string :np
      t.boolean :is_arus

      t.timestamps
    end
  end
end
