# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :not_yet_deadline, class: Task do
    name "not_yet_deadline"
    deadline 1.day.since
    is_finished FALSE
  end

  factory :meet_deadline, class: Task do
    name "meet_deadline"
    deadline 1.day.ago
    is_finish TRUE
  end

  factory :not_meet_deadline, class: Task do
    name "not_meet_deadline"
    deadline 1.day.ago
    is_finished FALSE
  end

  factory :finished, class: Task do
    name "finished task"
    is_finished TRUE
  end

  factory :not_finished, class: Task do
    name "not finished"
    is_finished FALSE
  end
end
