# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Group.create([
  {name: "メイン"},
  {name: "グループ1"}
])

Board.create([
  {
    group_id: '1',
    title: 'title2',
    name: '匿名',
    email: 'mail@mail.com',
    content: '本文',
    complete: false
  },  
  {
    group_id: '2',
    title: 'title2',
    name: '匿名',
    email: 'mail@mail.com',
    content: '本文',
    complete: false
  }

])
