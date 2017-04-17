# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BlogApp.Repo.insert!(%BlogApp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias BlogApp.Repo
alias BlogApp.Accounts.User
alias BlogApp.Blog.Post

# Create 10 seed users

for _ <- 1..10 do
  Repo.insert!(%User{
    name: Faker.Name.name,
    email: Faker.Internet.safe_email
  })
end

# Create 40 seed posts

for _ <- 1..40 do
  Repo.insert!(%Post{
    title: Faker.Lorem.sentence,
    body: Faker.Lorem.paragraphs(%Range{first: 1, last: 5}) |> Enum.join("\n\n"),
    accounts_users_id: Enum.random(1..10) # Pick random user for post to belong to
  })
end
