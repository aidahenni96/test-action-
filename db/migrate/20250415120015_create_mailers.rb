class CreateMailers < ActiveRecord::Migration[8.0]
  def change
    create_table :mailers do |t|
      t.string :UserMailer

      t.timestamps
    end
  end
end
