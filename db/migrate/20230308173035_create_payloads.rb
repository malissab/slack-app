class CreatePayloads < ActiveRecord::Migration[7.0]
  def change
    create_table :payloads do |t|
      t.string :eamil

      t.timestamps
    end
  end
end
