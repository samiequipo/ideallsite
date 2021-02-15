# Vodafone

# FIBRA 4 - TELEMOVEL
# description, price, tv, internet, movel, cartao, voz, type
vodafone_telemovel_list = [
  [ "Fibra 4 Plus", "67,8", 
    "TV - 170 Canais VBox 4K incluída | Amazon Prime Video y HBO Portugal 6 meses - FOX+ durante 24 meses", 
    "Internet - 100/100 Mbps - Smart Router", 
    "Móvel - 2 números - 2GB 3500 min + 3500 SMS/MMS",
    "Cartões - Cartão para PC/Tablet/Hotspot - Sem Net Móvel", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%vodafone%"))

  ],

  [ "Fibra 4 Plus", "78,8", 
    "TV - 170 Canais VBox 4K incluída | Amazon Prime Video y HBO Portugal 6 meses - FOX+ durante 24 meses", 
    "Internet - 100/100 Mbps - Smart Router", 
    "Móvel - 2 números - 10GB 3500 min + 3500 SMS/MMS",
    "Cartões - Cartão para PC/Tablet/Hotspot - Sem Net Móvel", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%vodafone%"))

  ],

  [ "Fibra 4 Play", "59,9", 
    "TV - 170 Canais VBox 4K incluída | Amazon Prime Video y HBO Portugal 24 meses - FOX+ durante 24 meses", 
    "Internet - 500/100 Mbps - Smart Router 2.0", 
    "Móvel - 1 números - 1GB 3500 min + 3500 SMS/MMS",
    "Cartões - Cartão para PC/Tablet/Hotspot - Sem Net Móvel", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%vodafone%"))

  ],

  [ "Fibra 4 Light", "51,9", 
    "TV - 140 Canais VBox 4K incluída | Amazon Prime Video y HBO Portugal 6 meses", 
    "Internet - 100/100 Mbps - Smart Router", 
    "Móvel - 1 números - 500MB 800 min + 800 SMS/MMS",
    "Cartões - Cartão para PC/Tablet/Hotspot - Sem Net Móvel", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%vodafone%"))

  ],

  [ "Fibra 4 Family Gold", "89,9", 
    "TV - 170 Canais VBox 4K incluída | Amazon Prime Video y HBO Portugal 24 meses - FOX+ durante 24 meses", 
    "Internet - 500/100 Mbps - Smart Router 2.0", 
    "Móvel - 3 números - 10GB 3500 min + 3500 SMS/MMS",
    "Cartões - Cartão para PC/Tablet/Hotspot - Sem Net Móvel", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%vodafone%"))

  ],
]

# FIBRA 3 - TELEMOVEL
# description, price, tv, internet, voz, type
vodafone_tv_net_voz_list = [
  [ "Fibra 3 Play", "40,9", 
    "TV - 140 Canais VBox 4K incluída | Amazon Prime Video y HBO Portugal 24 meses - FOX+ durante 24 meses", 
    "Internet - 500/100 Mbps - Smart Router 2.0", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%vodafone%"))

  ],

  [ "Fibra 3 Gold", "36,9", 
    "TV - 140 Canais | Amazon Prime Video 6 meses - HBO Portugal 24 meses y FOX+ durante 24 meses", 
    "Internet - 200/100 Mbps - Smart Router", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%vodafone%"))

  ],

  [ "Fibra 3 Plus", "34,9", 
    "TV - 140 Canais Box HD | HBO Portugal durante 3 meses", 
    "Internet - 100/100 Mbps - Smart Router", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%vodafone%"))

  ],

  [ "Fibra 3 Light", "30,9", 
    "TV - 100 Canais | Não inclui Tv Box", 
    "Internet - 30/30 Mbps - Smart Router", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%vodafone%"))

  ],
]

# FIBRA 2 - NET
# description, price, internet, voz type
vodafone_net_list = [
  [ "Fibra 2 Plus", "25,9", 
    "Internet - 30/3 Mbps - Smart Router", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "Net", company: Company.find_by("description like ?", "%vodafone%"))

  ],

  [ "Fibra 2 Gold", "27,9", 
    "Internet - 100/100 Mbps - Smart Router", 
    "VOZ - Chamadas incluídas Para a rede fixa e 31 destinos internacionais",
    Type.find_by(plano: "Net", company: Company.find_by("description like ?", "%vodafone%"))

  ],
]


#Filling Packages
vodafone_telemovel_list.each do |description, price, tv, internet, movel, cartao, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, movel: movel, cartao: cartao, voz: voz, type: type)
end

vodafone_tv_net_voz_list.each do |description, price, tv, internet, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, voz: voz, type: type)
end

vodafone_net_list.each do |description, price, internet, voz, type|
  Package.create!(description: description, price: price, internet: internet, voz: voz, type: type)
end


puts "Filled VODAFONE package"