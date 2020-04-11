class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :color
      t.string :url
      t.string :github
      t.text :technologies, array: true, default: []
      t.text :description
      t.text :difficulties
      t.text :solution
      t.text :features, array: true, default: []

      t.timestamps
    end
  end
end
