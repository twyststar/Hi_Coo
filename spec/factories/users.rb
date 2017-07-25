FactoryGirl.define do
  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
    admin 'false'
    factory :admin do
      admin 'true'
    end
  end
end
