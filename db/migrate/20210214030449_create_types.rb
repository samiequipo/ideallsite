class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :plano
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
