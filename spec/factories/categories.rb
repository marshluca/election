# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name "MyString"
    desc "MyString"
    icon_url "MyString"
    count 1
    status 1
  end
end
