class CreateSuggestions < ActiveRecord::Migration[5.1]
  def change
    create_table :suggestions do |t|
      t.string :title
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
