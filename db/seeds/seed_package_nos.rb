# NOS

# NOS 4 - TELEMOVEL
# description, price, tv, internet, cartao, voz, type
nos_telemovel_list = [
  [ "NOS 4", "51,99", 
    "TV - 150 Canais | Box UMA TV 4K", 
    "Internet - 100 Mbps", 
    "Cartões - 1 cartão 500MB 800 min/sms", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOS%"))
  ],
  
  [ "NOS 4", "54,99", 
    "TV - 180 Canais | Box UMA TV 4K Inclui NOS Studios ", 
    "Internet - 100 Mbps", 
    "Cartões - 1 cartão 1GB 3000 min/sms", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOS%"))
  ],
  
  [ "NOS 4", "59,99", 
    "TV - 180 Canais | Box UMA TV 4K Inclui NOS Studios ", 
    "Internet - 200 Mbps", 
    "Cartões - 2 cartão | 1 y 2 cartão da 2GB 6000 min/sms", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 4", "93,99", 
    "TV - 180 Canais | Box UMA TV 4K || Canais Premium de Cinema || TVCine, NOS Play e Acorn TV", 
    "Internet - 1 Gbps", 
    "Cartões - 1 cartão Sem limites | Velocidade máxima", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 4", "94,99", 
    "TV - 180 Canais | Box UMA TV 4K || Canais Premium de Entretenimento || TV Cine, NOS Play e ELEVEN", 
    "Internet - 1 Gbps", 
    "Cartões - 1 cartão Sem limites | Velocidade máxima", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 4", "99,99", 
    "TV - 180 Canais | Box UMA TV 4K || Canais Premium de Desporto", 
    "Internet - 1 Gbps", 
    "Cartões - 1 cartão Sem limites | Velocidade máxima", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%NOS%"))
  ],
]

nos_tv_net_voz_list = [
  [ "NOS 3", "30,99", 
    "TV - 120 Canais | Sem box", 
    "Internet - 30 Mbps", 
    "VOZ - 3.000 min para redes fixas nacionais - 1.000 min para destinos internacionais",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 3", "34,99", 
    "TV - 150 Canais | Box UMA TV 4K", 
    "Internet - 100 Mbps", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 3", "36,99", 
    "TV - 180 Canais | Box UMA TV 4K - Inclui NOS Studios", 
    "Internet - 200 Mbps", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 3", "58,99", 
    "TV - 180 Canais | Box UMA TV 4K - Canais Premium de Cinema - TVCine, NOS Play e Acorn TV", 
    "Internet - 1 Gbps", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 3", "62,99", 
    "TV - 180 Canais | Box UMA TV 4K - Canais Premium de Entretenimento - TV Cine, NOS Play e ELEVEN", 
    "Internet - 1 Gbps", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 3", "74,99", 
    "TV - 180 Canais | Box UMA TV 4K - Canais Premium de Desporto", 
    "Internet - 1 Gbps", 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%NOS%"))
  ],
]

nos_net_list = [
  [ "NOS - NET", "24,99", 
    "Internet - 30 Mbps | Inclui Router Wi-Fi", 
    Type.find_by(plano: "Net", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS - NET", "26,99", 
    "Internet - 100 Mbps | Inclui Router Wi-Fi", 
    Type.find_by(plano: "Net", company: Company.find_by("description like ?", "%NOS%"))
  ],
  
  [ "NOS - NET", "38,99", 
    "Internet - 1Gbps | Inclui Giga Router", 
    Type.find_by(plano: "Net", company: Company.find_by("description like ?", "%NOS%"))
  ],
]

nos_outros_list = [
  [ "NOS 2 - segunda casa+net", "27,99", 
    "TV - 120 Canais | Sem box", 
    "Internet - 30 Mbps", 
    nil,
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 2 - segunda casa+net", "30,49", 
    "TV - 150 Canais | Box UMA TV 4K", 
    "Internet - 30 Mbps", 
    nil,
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS 2", "13,49", 
    "TV - 6 Canais | Sem box", 
    nil, 
    "VOZ - Chamadas incluídas",
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%NOS%"))
  ],

  [ "NOS - MIX", "24,99", 
    "TV - 120 Canais | Sem box", 
    nil, 
    nil,
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%NOS%"))
  ],
]

#Filling Packages
nos_telemovel_list.each do |description, price, tv, internet, cartao, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, cartao: cartao, voz: voz, type: type)
end

nos_tv_net_voz_list.each do |description, price, tv, internet, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, voz: voz, type: type)
end

nos_net_list.each do |description, price, internet, type|
  Package.create!(description: description, price: price, internet: internet, type: type)
end

nos_outros_list.each do |description, price, tv, internet, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, voz: voz, type: type)
end

puts "Filled NOS package"