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
        name: "Lofoten Islands",
        price: 5
    },
    {
        name: "Machu Picchu",
        price: 8
    },
    {
        name: "New York City",
        price: 8
    },
    {
        name: "Venice",
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
    # zone_start: '1615195800',
    zone_end: '1615210200',
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
    # zone_start: '1615210200',
    zone_end: '1615224600',
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
    # zone_start: '1615228200',
    zone_end: '1615237200',
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
        # zone_start: '1615282200',
        zone_end: '1615314600',
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
    # zone_start: '1615296600',
    zone_end: '1615311000',
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
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.third.id,
    # zone_start: '1615314600',
    zone_end: '1615321800',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
    zone_start_date: 9,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 18,
    zone_start_minutes: 30,
    total_objective_time: 120
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(3).id,
    region_id: Region.first.id,
    # zone_start: '1615368600',
    zone_end: '1615383000',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
    zone_start_date: 10,
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
    region_id: Region.third.id,
    # zone_start: '1615383000',
    zone_end: '1615311000',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
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
    # zone_start: '1615404600',
    zone_end: '1615419000',
    is_active: false,
    is_complete: true,
    objective: "Work on project features",
    zone_start_date: 10,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 19,
    zone_start_minutes: 30,
    total_objective_time: 180
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(7).id,
    region_id: Region.find(8).id,
    # zone_start: '1615449600',
    zone_end: '1615503600',
    is_active: false,
    is_complete: true,
    objective: "Polish Project",
    zone_start_date: 11,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 8,
    zone_start_minutes: 0,
    total_objective_time: 180
)

Zone.create!(
    user_id: User.first.id,
    tag_id: Tag.first.id,
    trinket_id: Trinket.find(12).id,
    region_id: Region.third.id,
    # zone_start: '1615467600',
    zone_end: '1615472400',
    is_active: false,
    is_complete: true,
    objective: "Check for bugs",
    zone_start_date: 11,
    zone_start_month: 2,
    zone_start_year: 2021,
    zone_start_hours: 1,
    zone_start_minutes: 0,
    total_objective_time: 80
)





 p "Created #{User.count} user(s)"
 p "Created #{Usertrinket.count} usertrinket(s)"
 p "Created #{Trinket.count} trinket(s)"
 p "Created #{Userregion.count} userregion(s)"
 p "Created #{Region.count} region(s)"
 p "Created #{Tag.count} tag(s)"
 p "Created #{Zone.count} zone(s)"
