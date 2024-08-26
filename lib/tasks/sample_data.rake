namespace(:sample_data) do
  task(generate: :environment) do
    users = 10.times do
      User.create!(name: Faker::Name.name)
    end

    todos = users.flat_map do |user|
      rand(10..20).times.map do
        Todo.create!(user:, body: Faker::Quote.yoda)
      end
    end
  end
end
