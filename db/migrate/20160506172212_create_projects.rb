class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :institution
      t.string :url
      t.text   :description
      t.timestamps
    end
  end
end
