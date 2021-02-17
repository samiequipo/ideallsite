# Vodafone

# NOWO 4 - TELEMOVEL
# description, price, tv, internet, movel,voz, type
nowo_telemovel_list = [
  [ "nowo Telemóvel", "32,50", 
    "TV - 90 Canais + BOX NOWO TV HD", 
    "Internet - 120 Megas", 
    "Móvel - 1GB + 1.000 Min/SMS",
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Telemóvel", "37,50", 
    "TV - 140 Canais + BOX NOWO TV HD", 
    "Internet - 120 Megas", 
    "Móvel - 2GB + 2.000 Min/SMS",
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Telemóvel", "40,00", 
    "TV - 90 Canais + BOX NOWO TV HD", 
    "Internet - 250 Megas", 
    "Móvel - 4GB + 4.000 Min/SMS",
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Telemóvel", "42,50", 
    "TV - 140 Canais + BOX NOWO TV HD", 
    "Internet - 250 Megas", 
    "Móvel - 4GB + 4.000 Min/SMS",
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOWO%"))

  ],
]

# NOWO 3 - TV-NET-VOZ
# description, price, tv, internet, voz, type

nowo_tv_net_voz_list = [
  [ "nowo Tv Net Voz", "27,50", 
    "TV - 90 Canais + BOX NOWO TV HD", 
    "Internet - 120 Megas", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Tv Net Voz", "30,00", 
    "TV - 140 Canais + BOX NOWO TV HD", 
    "Internet - 120 Megas", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Tv Net Voz", "30,00", 
    "TV - 90 Canais + BOX NOWO TV HD", 
    "Internet - 250 Megas", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Tv Net Voz", "32,50", 
    "TV - 140 Canais + BOX NOWO TV HD", 
    "Internet - 250 Megas", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOWO%"))

  ],
]

nowo_outros_list = [
  [ "nowo Outros", "22,50", 
    nil, 
    "Internet - 250 Megas", 
    nil,
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Outros", "27,50", 
    nil, 
    "Internet - 120 Megas", 
    "Móvel - 2GB + 2.000 Min/SMS",
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Outros", "30,00", 
    nil, 
    "Internet - 120 Megas", 
    "Móvel - 4GB + 4.000 Min/SMS",
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%NOWO%"))

  ],

  [ "nowo Telemóvel", "35,00", 
    "TV - 90 Canais + BOX NOWO TV HD", 
    "Internet - 250 Megas", 
    "Móvel - 2GB + 2.000 Min/SMS",
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%NOWO%"))

  ],
]


#Filling Packages
nowo_telemovel_list.each do |description, price, tv, internet, movel, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, movel: movel, voz: voz, type: type)
end

nowo_tv_net_voz_list.each do |description, price, tv, internet, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, voz: voz, type: type)
end

nowo_outros_list.each do |description, price, tv, internet, movel, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, movel: movel, type: type)
end

puts "Filled NOWO package"