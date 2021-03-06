Gearactivity.destroy_all
Gear.destroy_all
Activity.destroy_all


Activity.create(name: "Trad Climbing")
Activity.create(name: "Sport Climbing")
Activity.create(name: "Ice Climbing")


Gear.create(name: "0.1 Cam", quantity_owned: 1, essential: false)
Gear.create(name: "0.2 Cam", quantity_owned: 1, essential: false)
Gear.create(name: "0.3 Cam", quantity_owned: 2, essential: false)
Gear.create(name: "0.4 Cam", quantity_owned: 2, essential: false)
Gear.create(name: "0.5 Cam", quantity_owned: 2, essential: false)
Gear.create(name: "0.75 Cam", quantity_owned: 3, essential: false)
Gear.create(name: "1 Cam", quantity_owned: 2, essential: false)
Gear.create(name: "2 Cam", quantity_owned: 2, essential: false)
Gear.create(name: "3 Cam", quantity_owned: 2, essential: false)
Gear.create(name: "4 Cam", quantity_owned: 2, essential: false)
Gear.create(name: "5 Cam", quantity_owned: 1, essential: false)
Gear.create(name: "6 Cam", quantity_owned: 1, essential: false)
Gear.create(name: "Tricams", quantity_owned: 1, essential: false)
Gear.create(name: "Small Nuts", quantity_owned: 1, essential: false)
Gear.create(name: "Big Nuts", quantity_owned: 1, essential: false)
Gear.create(name: "Alpine Draws", quantity_owned: 9, essential: false)
Gear.create(name: "Double Length Draws", quantity_owned: 2, essential: false)
Gear.create(name: "Double Length Sling", quantity_owned: 4, essential: false)
Gear.create(name: "Belay Gloves", quantity_owned: 1, essential: false)
Gear.create(name: "ATC with Guide Mode", quantity_owned: 2, essential: false)
Gear.create(name: "Grigri", quantity_owned: 1, essential: false)
Gear.create(name: "Small Locking Carabiner", quantity_owned: 8, essential: false)
Gear.create(name: "Large Locking Carabiner", quantity_owned: 4, essential: false)
Gear.create(name: "Cordelette", quantity_owned: 2, essential: false)
Gear.create(name: "70m Dry Rope", quantity_owned: 1, essential: false)
Gear.create(name: "70m Non-Dry Rope", quantity_owned: 1, essential: false)
Gear.create(name: "Helmet", quantity_owned: 1, essential: false)
Gear.create(name: "Stick Clip", quantity_owned: 1, essential: false)
Gear.create(name: "Harness", quantity_owned: 1, essential: false)
Gear.create(name: "Chalk Bag", quantity_owned: 1, essential: false)
Gear.create(name: "Ice Screws", quantity_owned: 3, essential: false)
Gear.create(name: "Ice Tool", quantity_owned: 2, essential: false)
Gear.create(name: "Crampons", quantity_owned: 2, essential: false)
Gear.create(name: "First Aid Kit", quantity_owned: 1, essential: true)
Gear.create(name: "Headlamp", quantity_owned: 3, essential: true)
Gear.create(name: "Pocket Knife", quantity_owned: 1, essential: true)
Gear.create(name: "Garmin", quantity_owned: 1, essential: true)
Gear.create(name: "Sunscreen", quantity_owned: 1, essential: true)
Gear.create(name: "Sunglasses", quantity_owned: 1, essential: true)
Gear.create(name: "Lighter", quantity_owned: 1, essential: true)
Gear.create(name: "Jacket", quantity_owned: 1, essential: true)
Gear.create(name: "Pack", quantity_owned: 1, essential: true)
Gear.create(name: "Pee Funnel", quantity_owned: 1, essential: true)
Gear.create(name: "Kula Cloth", quantity_owned: 1, essential: true)
Gear.create(name: "Sport Draws", quantity_owned: 13, essential: false)
Gear.create(name: "Rope Tarp", quantity_owned: 1, essential: false)
Gear.create(name: "Tape", quantity_owned: 1, essential: true)
Gear.create(name: "Gummy Bears", quantity_owned: 1, essential: true)
Gear.create(name: "Wag Bag", quantity_owned: 1, essential: true)

Gearactivity.create(gear_id: Gear.find_by(name: "Ice Tool").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "Sport Draws").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 12)
Gearactivity.create(gear_id: Gear.find_by(name: "70m Dry Rope").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Belay Gloves").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "ATC with Guide Mode").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "Helmet").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Crampons").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Cordelette").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Harness").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Large Locking Carabiner").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 3)
Gearactivity.create(gear_id: Gear.find_by(name: "Small Locking Carabiner").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 3)
Gearactivity.create(gear_id: Gear.find_by(name: "Ice Screws").id, activity_id: Activity.find_by(name: "Ice Climbing").id, gear_quantity_needed: 8)

Gearactivity.create(gear_id: Gear.find_by(name: "Rope Tarp").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "70m Non-Dry Rope").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Sport Draws").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 13)
Gearactivity.create(gear_id: Gear.find_by(name: "Grigri").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "ATC with Guide Mode").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "70m Non-Dry Rope").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 3)
Gearactivity.create(gear_id: Gear.find_by(name: "Large Locking Carabiner").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 4)
Gearactivity.create(gear_id: Gear.find_by(name: "Small Locking Carabiner").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 4)
Gearactivity.create(gear_id: Gear.find_by(name: "Double Length Sling").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "Helmet").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Harness").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Belay Gloves").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Stick Clip").id, activity_id: Activity.find_by(name: "Sport Climbing").id, gear_quantity_needed: 1)

Gearactivity.create(gear_id: Gear.find_by(name: "0.1 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "0.2 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "0.3 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "0.4 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "0.5 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "0.75 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "1 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "2 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "3 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "4 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "5 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "6 Cam").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Tricams").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Small Nuts").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Big Nuts").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Alpine Draws").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 8)
Gearactivity.create(gear_id: Gear.find_by(name: "Double Length Sling").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)
Gearactivity.create(gear_id: Gear.find_by(name: "Helmet").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Harness").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Belay Gloves").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Grigri").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "ATC with Guide Mode").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "70m Dry Rope").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 1)
Gearactivity.create(gear_id: Gear.find_by(name: "Large Locking Carabiner").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 3)
Gearactivity.create(gear_id: Gear.find_by(name: "Small Locking Carabiner").id, activity_id: Activity.find_by(name: "Trad Climbing").id, gear_quantity_needed: 2)

