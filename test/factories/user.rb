Factory.define :user do |f|
  f.sequence(:email) {|n| "user#{n}@example.com" }
  f.password "password"
end