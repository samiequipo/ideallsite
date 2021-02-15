# Vodafone

# NOWO 4 - TELEMOVEL
# description, price, tv, internet, movel,voz, type
nowo_telemovel_list = [
  [ "Nowo Telemóvel", "32,50", 
    "TV - 90 Canais + BOX NOWO TV HD", 
    "Internet - 120 Megas", 
    "Móvel - 1GB + 1.000 Min/SMS",
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%nowo%"))

  ],

  [ "Nowo Telemóvel", "37,50", 
    "TV - 140 Canais + BOX NOWO TV HD", 
    "Internet - 120 Megas", 
    "Móvel - 2GB + 2.000 Min/SMS",
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%nowo%"))

  ],

  [ "Nowo Telemóvel", "40,00", 
    "TV - 90 Canais + BOX NOWO TV HD", 
    "Internet - 250 Megas", 
    "Móvel - 4GB + 4.000 Min/SMS",
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%nowo%"))

  ],

  [ "Nowo Telemóvel", "42,50", 
    "TV - 140 Canais + BOX NOWO TV HD", 
    "Internet - 250 Megas", 
    "Móvel - 4GB + 4.000 Min/SMS",
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%nowo%"))

  ],
]


#Filling Packages
nowo_telemovel_list.each do |description, price, tv, internet, movel, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, movel: movel, voz: voz, type: type)
end

puts "Filled NOWO package"