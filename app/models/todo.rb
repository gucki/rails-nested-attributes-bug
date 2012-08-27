class Todo < ActiveRecord::Base
  belongs_to :task

  validates :title, :presence => true
  validates :planned_at, :presence => true
end