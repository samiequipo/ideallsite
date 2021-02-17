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
  Type.create!(plano: plano, company: Company.find_by("description like ?", "%MEO%"))
end

type_nos.each do |plano|
  Type.create!(plano: plano, company: Company.find_by("description like ?", "%NOS%"))
end

type_vodafone.each do |plano|
  Type.create!(plano: plano, company: Company.find_by("description like ?", "%VODAFONE%"))
end

type_nowo.each do |plano|
  Type.create!(plano: plano, company: Company.find_by("description like ?", "%NOWO%"))
end

puts "Type Filled!"