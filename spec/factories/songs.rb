# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :song do
    name "MyString"
    artist "MyString"
    minutes 3
    seconds 32
  end
end
