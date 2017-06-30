FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Snow'
    email 'test1@test.com'
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email 'admin@user.com'
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
end