FactoryGirl.define do

  factory :message do
    content Faker::Lorem.sentence
    image File.open("#{Rails.root}/public/images/niko-photo.jpg")
    user
    group
  end

end
