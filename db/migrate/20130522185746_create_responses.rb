class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :option
      t.references :question

      t.timestamps
    end
  end
end
