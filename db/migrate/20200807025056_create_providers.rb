class CreateProviders < ActiveRecord::Migration[6.0]
    def change
        create_table :providers do |t|
            t.string :name
            t.string :company_name
            t.string :address
            t.string :phone
            t.string :bank_account_information
            t.text :notes

            t.timestamps
        end
    end
end
