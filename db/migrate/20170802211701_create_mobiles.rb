class CreateMobiles < ActiveRecord::Migration[5.0]
  def change
    create_table :mobiles do |t|
      t.string :ime
      t.string :slika
      t.string :opis
      t.string :specifikacije
      t.timestamps
    end
  end
end
