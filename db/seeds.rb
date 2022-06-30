Project.destroy_all
Ranking.destroy_all
User.destroy_all

User.create!(email: "jojo@gmail.com", password: "azerty")
Ranking.create!(title: "Mon classement", user: User.first)

10.times do |i|
    Project.create!(title: "Project n° #{i}", position: i + 1, ranking: Ranking.first)
end