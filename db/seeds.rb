Todo.delete_all
Task.delete_all

t = Task.create!(:title => 'Test', :planned_at => "2012-08-01 13:32:00")
t.todos.create!(:title => 'Test', :planned_at => "2012-08-01 13:32:00")
