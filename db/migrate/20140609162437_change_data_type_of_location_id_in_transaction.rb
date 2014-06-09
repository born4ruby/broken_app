class ChangeDataTypeOfLocationIdInTransaction < ActiveRecord::Migration
  def up
    execute 'ALTER TABLE transactions ALTER COLUMN location_id TYPE integer USING (location_id::integer)'
  end

  def down
    execute 'ALTER TABLE transactions ALTER COLUMN location_id TYPE text USING (location_id::text)'
  end
end
