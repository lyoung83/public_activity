Sequel.migration do
  change do
    create_table :activities do
      primary_key :id
      Integer :trackable, index: true
      Integer :owner, index: true
      Integer :recipient, index: true
      String :key
      Text   :parameters
    end
  end
end
