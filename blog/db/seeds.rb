# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


assemblies = [
  { name: 'Airplane' },
  { name: 'Boat' }
]

assemblies.each do |r|
  if Assembly.exists? name: r[:name]
    puts "Exists #{r}"
  else
    puts "Adding #{r}"
    Assembly.create(r)
  end
end

parts = [
  { part_number: '3YUS', assembly_ids: ['1'] },
  { part_number: '8ATE' }
]

parts.each do |r|
  if Part.exists? part_number: r[:part_number]
    puts "Exists #{r}"
  else
    puts "Adding #{r}"
    Part.create(r)
  end
end



# Through data
patients = [
  { name: 'Sarah' },
  { name: 'Julie' },
]

patients.each do |r|
  if Patient.exists? name: r[:name]
    puts "Exists #{r}"
  else
    puts "Adding #{r}"
    Patient.create(r)
  end
end

physicians = [
  { name: 'Dr. Woe' },
  { name: 'Dr. Smith' },
]

physicians.each do |r|
  if Physician.exists? name: r[:name]
    puts "Exists #{r}"
  else
    puts "Adding #{r}"
    Physician.create(r)
  end
end
