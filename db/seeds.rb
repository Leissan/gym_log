# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Exercise.create(name: "Jumping jacks", description: "Jump on the spot while coordinating the swinging of the arms and legs", repetitions: 20)
Exercise.create(name: "Shoulder-arm circles", description: "Extend your arms to the sides and draw small circles in the air with your hands", repetitions: 10)
Exercise.create(name: "Hip rotations", description: "Rotate the thigh and knee outward away from the body", repetitions: 10)

Exercise.create(name: "Push-ups", description: "Raise and lower your body with the straightening and bending of the arms while keeping the back straight and supporting the body on the hands and toes", repetitions: 10)
Exercise.create(name: "Alternating punches", description: " Stand with one foot slightly in front of the other and bring both hands into a fist just below your chin. Extend and punch one arm out at a time in front of you creating a straight line from your shoulder to your hand", repetitions: 20)
Exercise.create(name: "Floor tricep dips", description: "From a seated position place both palms on the floor behind your hips with elbows bent. From here, push your hips up off the floor by extending your elbows before lowering yourself back down.", repetitions: 10)

Exercise.create(name: "Planks", description: "Get down into pushup position, feet behind you, hands under your shoulders. Lock out your arms and legs, squeeze your core muscles, and hold your body stiff (like a plank!) for as long as you can.", repetitions: 10)
Exercise.create(name: "Side planks", description: "From plank position, rotate onto one side. Prop yourself up on your elbow and one foot with your body straight and stiff. Don’t forget to squeeze your core as you hold this position for as long as you can.", repetitions: 10)
Exercise.create(name: "Mountain Climbers", description: "Get down into plank position. With your arms locked and your body tight, drive one knee at a time off the floor, up toward your chest, and then back to its original position. Repeat in quick succession.", repetitions: 20)

Exercise.create(name: "Bridge", description: "Lie on your back. Bend your knees and lift your hips until your body forms a straight line from knees to head.", repetitions: 20)
Exercise.create(name: "Fire hydrant", description: "Start on all fours. Lift one leg up to the side. Go only as high as you can without shifting your torso to the side. Repeat with the other leg.", repetitions: 10)
Exercise.create(name: "Donkey kicks", description: "Get on all fours. Lift one heel up towards the ceiling while keeping your knee bent. Repeat with the other leg", repetitions: 15)

Log.create(date: "feb 1", body: "it was hard", user_id: 1, exercise_id: 1)
Log.create(date: "feb 2", body: "it was easy", user_id: 1, exercise_id: 2)
Log.create(date: "feb 3", body: "it was ok", user_id: 2, exercise_id: 3)

User.create(username: "Leissan", password_digest: "1111")
User.create(username: "Kamil", password_digest: "2222")