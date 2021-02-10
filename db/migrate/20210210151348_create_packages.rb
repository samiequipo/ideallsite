class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.string :tv
      t.string :internet
      t.string :movel
      t.string :cartao
      t.string :voz

      t.timestamps
    end
  end
end
