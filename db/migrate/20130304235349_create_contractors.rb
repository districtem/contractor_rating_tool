class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
    	t.integer :contractor_id
    	t.string :first_name
    	t.string :last_name
      t.timestamps
    end
    add_index :contractors, :contractor_id,	:unique => true
  end
end
