FactoryGirl.define do
  factory :user do
    username "MyString"
    email "MyString"
    password_digest "MyString"
    admin false
    remember_digest "MyString"
    activation_digest "MyString"
    activated false
    activated_at "2017-01-29 18:04:51"
    reset_digest "MyString"
    reset_at "2017-01-29 18:04:51"
  end
end
