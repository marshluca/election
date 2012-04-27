# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feed do
    title "MyString"
    author_id 1
    category_id 1
    content "MyText"
    image_url "MyString"
    origin_url "MyString"
    source "MyString"
    status 1
    vote_count 1
  end
end
