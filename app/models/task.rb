class Task < ActiveRecord::Base
  attr_accessible :deadline, :is_finished, :name
  validates_presence_of :name
  validates_length_of :name, :maximum => 50
end
