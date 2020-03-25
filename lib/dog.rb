class Dog
  attr_reader(:id)
  attr_accessor(:name, :breed)
  
  def initialize(id: nil, name:, breed:)
    @id = id
    @name = name
    @breed = breed
  end
  
  def self.create_table()
    sql = "CREATE TABLE IF NOT EXISTS dogs (id INTEGER PRIMARY KEY, name TEXT, breed TEXT);"
    DB[:conn].execute(sql);
  end
  
  def self.drop_table()
    sql = "DROP TABLE IF EXISTS dogs;"
    DB[:conn].execute(sql);
  end
  
  
  
end