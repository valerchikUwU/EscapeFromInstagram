FactoryBot.define  do
  factory :post do
    association :account
    title {FFaker::Book.title}
  end
end
