class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :github
      t.text :description
      t.text :difficulties
      t.text :solution
      t.text :technologies
      t.text :features

      t.timestamps
    end
  end
end
