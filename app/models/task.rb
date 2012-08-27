class Task < ActiveRecord::Base
  has_many :todos

  accepts_nested_attributes_for :todos

  validates :title, :presence => true
  validates :planned_at, :presence => true

  def self.buggy
    t = Task.first
    puts Time.zone
    puts t.planned_at
    puts t.todos.first.planned_at
    data = {"planned_at"=>"2012-08-31 11:32:00", "todos_attributes"=>{"0"=>{"planned_at"=>"2012-08-31 11:32:00", "title"=>"", "id"=>"#{t.todos.first.id}"}}}
    puts data.inspect
    t.update_attributes(data)
    puts t.planned_at
    puts t.todos.first.planned_at
    puts Time.zone
    raise "a"
  end
end