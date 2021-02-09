class CreateTableRemotes < ActiveRecord::Migration[6.1]
  def change
    create_table :table_remotes do |t|
      t.string :tde
      t.string :nde
      t.string :dsrs
      t.string :dstd
      t.string :dsnd
      t.string :dspn
      t.string :dssn
      t.string :dspa
      t.string :dssa
      t.string :dsnr
      t.string :fenr
      t.string :np
      t.string :novedad_retiro
      t.boolean :is_process, default: false

      t.timestamps
    end
  end
end
