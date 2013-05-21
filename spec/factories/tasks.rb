# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    deadline "2013-05-21 21:02:14"
    is_finished ""
  end
end
