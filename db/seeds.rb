if Rails.env.development? && User.count.zero? && Message.count.zero?
  users = 5.times.map do |i|
    User.create(name: "User #{i + 1}", email: "user#{i + 1}@example.com", password: '123456789')
  end

  500.times do |i|
    image_url = ["https://picsum.photos/id/#{rand(0..1084)}/300", nil].sample

    users.sample.messages.create(text: Faker::ChuckNorris.fact, image_url: image_url)
  end
end