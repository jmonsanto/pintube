FactoryGirl.define do
  factory :board do
    name { FFaker::Education.major }
    description { FFaker::HipsterIpsum.sentence }
  end
end
