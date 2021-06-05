Zone.destroy_all
Usertrinket.destroy_all
Userregion.destroy_all
Tag.destroy_all
Trinket.destroy_all
Region.destroy_all
User.destroy_all

User.create!(
    username: "Matt",
    password: "123",
    tokens: 88
)

User.create!(
    username: "Bobby",
    password: '456'
)

trinkets = 
[
    {     
        name: "LPrinter",
        price: 2
    },
    {
        name: "Bed",
        price: 2
    },
    {
        name: "Coder",
        price: 2
    },
    {
        name: "Camera",
        price: 4
    },
    {
        name: "Campfire",
        price: 4
    },
    {
        name: "Cake",
        price: 4
    },
    {
        name: "Coffee",
        price: 4
    },
    {
        name: "Devices",
        price: 4
    },
    {
        name: "Cooking",
        price: 4
    },
    {
        name: "Pencil",
        price: 5
    },
    {
        name: "Game",
        price: 5
    },
    {
        name: "Koi",
        price: 5
    },
    {
        name: "Tools",
        price: 5
    },
    {
        name: "Home",
        price: 5
    },
    {
        name: "Astronaut",
        price: 99
    },
    {
        name: "Idea",
        price: 77
    },
    {
        name: "Reading",
        price: 77
    },
    {
        name: "Working",
        price: 88
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
        price: 5
    },
    {
        name: "Giza",
        price: 5
    },
    {
        name: "Iguazu Falls",
        price: 5
    },
    {
        name: "Kauai",
        price: 7

    },
    {
        name: "Lofoten Islands",
        price: 5
    },
    {
        name: "Machu Picchu",
        price: 8
    },
    {
        name: "Mykonos",
        price: 5
    },
    {
        name: "New York City",
        price: 8
    },
    {
        name: "Niagara Falls",
        price: 5
    },
    {
        name: "Osaka",
        price: 8
    },
    {
        name: "Paris",
        price: 10
    },
    {
        name: "Shibuya Crossing",
        price: 8
    },
    {
        name: "Venice",
        price: 10
    },
    {
        name: "Yosemite",
        price: 10
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
    trinket_id: Trinket.third.id
)

Usertrinket.create!(
    user_id: User.first.id,
    trinket_id: Trinket.find(7).id
)

Usertrinket.create!(
    user_id: User.first.id,
    trinket_id: Trinket.find(12).id
)

Usertrinket.create!(
    user_id: User.first.id,
    trinket_id: Trinket.find(10).id
)

Usertrinket.create!(
    user_id: User.second.id,
    trinket_id: Trinket.second.id
)

Userregion.create!(
    user_id: User.first.id,
    region_id: Region.third.id
)

Userregion.create!(
    user_id: User.first.id,
    region_id: Region.first.id
)

Userregion.create!(
    user_id: User.first.id,
    region_id: Region.find(7).id
)

Userregion.create!(
    user_id: User.second.id,
    region_id: Region.find(8).id
)

Userregion.create!(
    user_id: User.second.id,
    region_id: Region.second.id
)

Tag.create!(
    user_id: User.first.id,
    name: "Project/Code"
)

Tag.create!(
    user_id: User.first.id,
    name: "Gym"
)

Tag.create!(
    user_id: User.first.id,
    name: "Running"
)

Tag.create!(
    user_id: User.first.id,
    name: "Study"
)

Tag.create!(
    user_id: User.first.id,
    name: "Blog"
)

Tag.create!(
    user_id: User.first.id,
    name: "Cleaning"
)

Tag.create!(
    user_id: User.first.id,
    name: "Sort Mail"
)

Tag.create!(
    user_id: User.first.id,
    name: "Resume"
)

Tag.create!(
    user_id: User.first.id,
    name: "LeetCode"
)

Tag.create!(
    user_id: User.first.id,
    name: "Presentation"
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(3).id,
    region_id: Region.third.id,
    zone_start: '03/08/2021, 9:30 AM',
    zone_end: '1615228200000',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
    zone_start_date: 8,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 9,
    zone_start_minutes: 30,
    total_objective_time: 240
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.find(8).id,
    zone_start: '03/08/2021, 1:30 PM',
    zone_end: '1615239000000',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
    zone_start_date: 8,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 13,
    zone_start_minutes: 30,
    total_objective_time: 240
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.second.id,
    zone_start: '03/08/2021, 6:30 PM',
    zone_end: '1615255200000',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
    zone_start_date: 8,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 18,
    zone_start_minutes: 30,
    total_objective_time: 150
)

# ---


Zone.create!(
        user_id: User.first.id,
        tag_id: Tag.first.id,
        trinket_id: Trinket.find(3).id,
        region_id: Region.third.id,
        zone_start: '03/09/2021, 9:30 AM',
        zone_end: '1615314600000',
        is_active: false,
        is_complete: true,
        objective: "Work on project features",
        zone_start_date: 9,
        zone_start_month: 2,
        zone_start_year: 2021,
        zone_start_hours: 9,
        zone_start_minutes: 30,
        total_objective_time: 240
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.second.id,
    zone_start: '03/09/2021, 1:30 PM',
    zone_end: '1615325400000',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
    zone_start_date: 9,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 13,
    zone_start_minutes: 30,
    total_objective_time: 240
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.second.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.third.id,
    zone_start: '03/09/2021, 6:30 PM',
    zone_end: '1615336200000',
    is_active: false,
    is_complete: true,
    objective: "Gym workout",
    zone_start_date: 9,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 18,
    zone_start_minutes: 30,
    total_objective_time: 60
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.fourth.id,
    trinket_id: Trinket.find(3).id,
    region_id: Region.first.id,
    zone_start: '03/10/2021, 9:30 AM',
    zone_end: '1615397400000',
    is_active: false,
    is_complete: true,
    objective: "Study up on styling and redux",
    zone_start_date: 10,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 9,
    zone_start_minutes: 30,
    total_objective_time: 240
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.fourth.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.third.id,
    zone_start: '03/10/2021, 1:30 PM',
    zone_end: '1615411800000',
    is_active: false,
    is_complete: true,
    objective: "Study up on styling and redux",
    zone_start_date: 10,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 13,
    zone_start_minutes: 30,
    total_objective_time: 240
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.find(8).id,
    zone_start: '03/10/2021, 7:30 PM',
    zone_end: '1615426200000',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
    zone_start_date: 10,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 19,
    zone_start_minutes: 30,
    total_objective_time: 60
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.fourth.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.find(8).id,
    zone_start: '04/23/2021, 9:30 AM',
    zone_end: '1619195400000',
    is_active: false,
    is_complete: true,
    objective: "Work on Udemy algorithm lectures",
    zone_start_date: 23,
    zone_start_month: 3,
    zone_start_year: 2021,
    zone_start_hours: 9,
    zone_start_minutes: 30,
    total_objective_time: 180
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(12).id,
    region_id: Region.first.id,
    zone_start: '04/23/2021, 1:30 PM',
    zone_end: '1619203800000',
    is_active: false,
    is_complete: true,
    objective: "Fix zoneist bugs relevant to roadmap",
    zone_start_date: 23,
    zone_start_month: 3,
    zone_start_year: 2021,
    zone_start_hours: 13,
    zone_start_minutes: 30,
    total_objective_time: 80
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.second.id,
    trinket_id: Trinket.find(12).id,
    region_id: Region.third.id,
    zone_start: '04/23/2021, 6:30 PM',
    zone_end: '1619221800000',
    is_active: false,
    is_complete: true,
    objective: "Go to gym",
    zone_start_date: 23,
    zone_start_month: 3,
    zone_start_year: 2021,
    zone_start_hours: 18,
    zone_start_minutes: 30,
    total_objective_time: 80
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.fourth.id,
    trinket_id: Trinket.find(12).id,
    region_id: Region.second.id,
    zone_start: '04/29/2021, 9:30 PM',
    zone_end: '1619713800000',
    is_active: false,
    is_complete: true,
    objective: "Work on Udemy algorithm lectures",
    zone_start_date: 29,
    zone_start_month: 3,
    zone_start_year: 2021,
    zone_start_hours: 9,
    zone_start_minutes: 30,
    total_objective_time: 180
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(12).id,
    region_id: Region.fifth.id,
    zone_start: '04/29/2021, 1:30 PM',
    zone_end: '1619724600000',
    is_active: false,
    is_complete: true,
    objective: "Work on fixing Analytics component bugs for zoneist",
    zone_start_date: 29,
    zone_start_month: 3,
    zone_start_year: 2021,
    zone_start_hours: 13,
    zone_start_minutes: 30,
    total_objective_time: 120
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.third.id,
    trinket_id: Trinket.find(12).id,
    region_id: Region.third.id,
    zone_start: '04/29/2021, 8:30 PM',
    zone_end: '1619744400000',
    is_active: false,
    is_complete: true,
    objective: "Late night run",
    zone_start_date: 29,
    zone_start_month: 3,
    zone_start_year: 2021,
    zone_start_hours: 20,
    zone_start_minutes: 30,
    total_objective_time: 30
)





 p "Created #{User.count} user(s)"
 p "Created #{Usertrinket.count} usertrinket(s)"
 p "Created #{Trinket.count} trinket(s)"
 p "Created #{Userregion.count} userregion(s)"
 p "Created #{Region.count} region(s)"
 p "Created #{Tag.count} tag(s)"
 p "Created #{Zone.count} zone(s)"
