puts "Seeding Data into DB from people_of_aarklash_models"

Settings.ns(:main).app_name = "People of Aarklash"

[ :equipment, :artifact, :affiliation, :solo, :ability ].each do |model|
  Category.find_or_create_by(name: model.to_s.capitalize)
end