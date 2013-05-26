require 'spec_helper'

describe "TasksModel" do
  describe "When difine Task" do
    it "is valid with name shorter than 50 letters" do
      task = Task.new(
          name: 'sample task'
      )
      expect(task).to be_valid
    end

    it "is invalid without name" do
      task = Task.new()
      expect(task).to have(1).errors_on(:name)
    end

    it "is valid with name which length is 50 letters" do
      task = Task.new(
          name: 'a'*50
      )
      expect(task).to be_valid
    end

    it "is invalid with name longer than 50 letters" do
      task = Task.new(
          name: 'a'*51
      )
      expect(task).to have(1).errors_on(:name)
    end
  end
end