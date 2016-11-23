FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some Rationale"
    status "submitted"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    status "submitted"
    user
  end
end