class CreateProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :problems do |t|
      t.references :problematic, polymorphic: true
      t.integer :type
      t.timestamps
    end
  end
end
