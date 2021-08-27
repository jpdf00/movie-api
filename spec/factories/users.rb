FactoryBot.define do
  factory :user do
    username { 'John' }
    email  { 'foobar@gmail.com' }
    password { '12345678' }
  end
end
