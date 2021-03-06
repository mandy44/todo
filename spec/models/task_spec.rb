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

  describe "When get Tasks" do
    it "can get unfinished task" do
      FactoryGirl.create(:finished)
      FactoryGirl.create(:not_finished)

      not_finished = Task.get_not_finished
      expect(not_finished.size).to equal(1)
      expect(not_finished.first.is_finished).to equal(FALSE)
    end

    it "can get finished task" do
      FactoryGirl.create(:finished)
      FactoryGirl.create(:not_finished)

      finished = Task.get_finished
      expect(finished.size).to equal(1)
      expect(finished.first.is_finished).to equal(TRUE)
    end
  end

  describe "When finish Tasks" do
    it "correctly finish task" do
      task = FactoryGirl.build(:not_finished)
      task.finish

      expect(task.is_finished).to equal(TRUE);
    end
  end
end