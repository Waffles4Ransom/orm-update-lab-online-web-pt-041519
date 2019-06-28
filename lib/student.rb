require_relative "../config/environment.rb"

class Student

 def initialize(name, grade, id = nil)
  @name = name 
  @grade = grade 
  @id = id 
 end 
 
 def self.create_table 
   sql = <<-SQL 
      CREATE TABLE IF NOT EXISTS students (
        id INGETGER Primary KEY, 
        name TEXT, 
        grade INGETGER
      )
      SQL
 
    DB[:conn].execute(sql)
 end 

end
