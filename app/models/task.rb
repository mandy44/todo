class Task < ActiveRecord::Base
  attr_accessible :deadline, :is_finished, :name
  validates_presence_of :name
  validates_length_of :name, :maximum => 50

  class << self
    def get_not_finished
      self.where(:is_finished => FALSE).all
    end

    def get_finished
      self.where(:is_finished => TRUE).all
    end
  end

  def finish
    self.is_finished = TRUE
    save
  end
end
