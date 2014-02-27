if Sinatra::Application.development?
  unless DB.table_exists?(:posts)
    DB.create_table :posts do
      primary_key :id
      text :body, :null => false
      datetime :created_at, :null => false
      datetime :updated_at, :null => false
    end
  end
end
