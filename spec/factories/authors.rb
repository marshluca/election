# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    name "MyString"
    intro "MyString"
    count 1
    status 1
  end
end
