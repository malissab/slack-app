class CreatePayloads < ActiveRecord::Migration[7.0]
  def change
    create_table :payloads do |t|
      t.string :email

      t.timestamps
    end
  end
end
