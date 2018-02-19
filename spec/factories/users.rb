FactoryBot.define do
  factory :admin, class: User do
    name "Admin"
    password "Admin"
    role 1
  end
end
