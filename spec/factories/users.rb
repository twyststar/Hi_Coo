FactoryGirl.define do
  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
    admin 'false'
  end
  factory :admin do
    email 'test@test.com'
    password 'password'
    admin 'true'
  end
end
