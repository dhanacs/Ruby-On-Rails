class CreateTags < ActiveRecord::Migration[5.1]
	def change
		create_table :tags do |t|
			t.text :title
			t.text :image
			t.timestamps
		end
	end
end
