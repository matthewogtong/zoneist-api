Zone.destroy_all
Usertrinket.destroy_all
Userregion.destroy_all
Tag.destroy_all
Trinket.destroy_all
Region.destroy_all
User.destroy_all

User.create!(
    username: "Admin",
    password: "123",
    tokens: 100
)

User.create!(
    username: "Bobby",
    password: '456'
)

trinkets = 
[
    {
       name: "pencil",
       price: 2
    },
    {
        name: "controller",
        price: 4
    }
]

regions = 
[
    {
       name: "Barcelona",
       price: 3
    },
    {
        name: "Blue Lagoon",
        price: 3
    },
    {
        name: "Blue Lake Torii",
        price: 0
    },
    {
        name: "Giza",
        price: 3
    },
    {
        name: "Iguazu Falls",
        price: 3
    },
    {
        name: "Lofoten Islands",
        price: 0
    },
    {
        name: "Machu Picchu",
        price: 8
    },
    {
        name: "NYC",
        price: 0
    },
    {
        name: "Venice",
        price: 8
    }
]


trinkets.each do |trinket_hash| 
    Trinket.create!(trinket_hash)
end

regions.each do |region_hash| 
    Region.create!(region_hash)
end

Usertrinket.create!(
    user_id: User.first.id,
    trinket_id: Trinket.first.id
)

Usertrinket.create!(
    user_id: User.first.id,
    trinket_id: Trinket.second.id
)

Usertrinket.create!(
    user_id: User.second.id,
    trinket_id: Trinket.second.id
)

Userregion.create!(
    user_id: User.first.id,
    region_id: Region.first.id
)

Userregion.create!(
    user_id: User.first.id,
    region_id: Region.second.id
)

Userregion.create!(
    user_id: User.second.id,
    region_id: Region.second.id
)

Tag.create!(
    user_id: User.first.id,
    name: "Coding"
)

10.times do 
    Zone.create!(
        user_id: User.first.id,
        tag_id: Tag.first.id,
        trinket_id: Trinket.first.id,
        region_id: Region.first.id,
        objective: "Work on Project",
        zone_start: Time.now
    )
end

 p "Created #{User.count} user(s)"
 p "Created #{Usertrinket.count} usertrinket(s)"
 p "Created #{Trinket.count} trinket(s)"
 p "Created #{Userregion.count} userregion(s)"
 p "Created #{Region.count} region(s)"
 p "Created #{Tag.count} tag(s)"
 p "Created #{Zone.count} zone(s)"
