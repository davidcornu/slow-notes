namespace(:sample_data) do
  task(generate: :environment) do
    users = 10.times.map do
      User.create!(name: Faker::Name.name)
    end

    todos = users.flat_map do |user|
      rand(10..20).times.map do
        Todo.create!(user:, body: Faker::Hacker.say_something_smart)
      end
    end

    todos.each do |todo|
      2.times do
        user = users.sample
        Comment.create!(user:, todo:, body: Faker::Quote.yoda)
      end
    end
  end
end
