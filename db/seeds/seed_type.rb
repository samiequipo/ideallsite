# Types are all option that server the companies 
# Filling Types

type_meo = [
  "Telemóvel",
  "TV Net Voz",
  "Gaming edition",
  "Outros"
]

type_nos =
type_vodafone = [
  "Telemóvel",
  "TV Net Voz",
  "Net",
  "Outros"
]

type_nowo = [
  "Telemóvel",
  "TV Net Voz",
  "Outros"
]

type_meo.each do |plano|
  Type.create!(plano: plano, company: Company.find_by("description like ?", "%meo%"))
end

type_nos.each do |plano|
  Type.create!(plano: plano, company: Company.find_by("description like ?", "%nos%"))
end

type_vodafone.each do |plano|
  Type.create!(plano: plano, company: Company.find_by("description like ?", "%vodafone%"))
end

type_vodafone.each do |plano|
  Type.create!(plano: plano, company: Company.find_by("description like ?", "%nowo%"))
end

puts "Type Filled!"