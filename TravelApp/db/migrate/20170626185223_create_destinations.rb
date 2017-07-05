class CreateDestinations < ActiveRecord::Migration[5.1]
	def change
		create_table :destinations do |t|
			t.text :name
			t.text :image
			t.text :description
			t.references :tag
			t.timestamps
		end
	end
end
