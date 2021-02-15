# MEO

# M4 - TELEMOVEL
# description, price, tv, internet, movel, cartao, voz, type
meo_telemovel_list = [
  [ "M4", "51,99", 
    "TV - 150 Canais MEOBox | Pack Standard", 
    "Internet - 100/100 Mbps Download/upload", 
    "Móvel - 500 MB Máxima velocidade da rede 500 minutos + 500 SMS por cartão",
    "Cartões - 1 cartão", 
    "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
  
  [ "Oferta mais Net em casa", "55,99", 
    "TV - 200 Canais MEOBox | Pack Standard + Extra", 
    "Internet - 500/100 Mbps Download/upload", 
    "Móvel - 1 GB Máxima velocidade da rede 3.500 minutos + 3.500 SMS por cartão",
    "Cartões - 1 cartão", 
    "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
  
  [ "M4 - MEO com tudo", "99,99", 
    "TV - 200 Canais MEOBox | Pack Standard + Extra | 200 + €50/mês em canais e serviços premium e MEO Go Multi.", 
    "Internet - 1.000/400 Mbps Download/upload A máxima velocidade do mercado.", 
    "Móvel - Dados, minutos e SMS ilimitados Máxima velocidade da rede",
    "Cartões - 1 cartão | ilimitado", 
    "VOZ - Chamadas ilimitadas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
 
  [ "M4", "59,99", 
    "TV - 200 Canais MEOBox | Pack Standard", 
    "Internet - 200/100 Mbps Download/upload", 
    "Móvel - 2 GB Máxima velocidade da rede 3.500 minutos + 3.500 SMS por cartão",
    "Cartões - 2 cartão incluídos", 
    "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
]

# M3 - TV-NET-VOZ
# description, price, tv, internet, voz, type
meo_tv_net_voz_list = [
  [ "M3", "36,99", 
    "TV - 150 Canais MEOBox | Pack Standard", 
    "Internet - 500/100 Mbps Download/upload", 
    "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%meo%"))
  ],

  [ "MEO com tudo", "74,99", 
    "TV - 200 Canais MEOBox | Pack Standard + Extra | 200 canais + €50/mês em canais e serviços premium e MEO Go Multi.", 
    "Internet - 1000/400 Mbps Download/upload", 
    "VOZ - Chamadas ilimitadas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%meo%"))
  ],

  [ "M3", "30,99", 
    "TV - 100 Canais | Pack Standard Sem MEOBox", 
    "Internet - 30/10 Mbps Download/upload 500GB de tráfego incluído", 
    "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "TV Net Voz", company: Company.find_by("description like ?", "%meo%"))
  ],
]

# M4 M3 M1 Gaming
meo_gaming_list = [
  [ "M4 - Gaming com tudo", "69,99", 
    "TV - 200 Canais MEOBox | Pack Standard + Extra",
    "Internet - 1.000/400 Mbps Download/upload",
    "Móvel - 1 GB Máxima velocidade da rede 3.500 minutos + 3.500 SMS",
    "Cartões - 1 cartão | ilimitado", 
    "VOZ - Chamadas ilimitadas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Gaming edition", company: Company.find_by("description like ?", "%meo%"))
  ],

  [ "M3 - Gaming com TV, Net e Voz", "50,99", 
    "TV - 150 Canais MEOBox | Pack Standard", 
    "Internet - 1000/400 Mbps Download/upload", nil, nil, 
    "VOZ - Chamadas ilimitadas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Gaming edition", company: Company.find_by("description like ?", "%meo%"))
  ],

  [ "M1 - Gaming com NET", "39,99", nil,
    "Internet - 1000/400 Mbps Download/upload", nil, nil, nil, 
    Type.find_by(plano: "Gaming edition", company: Company.find_by("description like ?", "%meo%"))
  ],
]

# M2 M1 Outros
meo_outros_list = [
  [ "M2 - TV e Voz", "32,99", 
    "TV - 150 Canais MEOBox | Pack Standard", 
    nil, nil, nil, 
    "VOZ - Chamadas ilimitadas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%meo%"))
  ],

  [ "M2 - NET e Voz", "27,99", 
    nil, 
    "Internet - 100/100 Mbps Download/upload", nil, nil, 
    "VOZ - Chamadas ilimitadas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%meo%"))
  ],

  [ "M1 - NET", "24,99", nil,
    "Internet - 30/3 Mbps Download/upload", nil, nil, nil, 
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%meo%"))
  ],

  [ "M1 - NET", "24,99", 
    "TV - 120 Canais Sem MEOBox",
    nil, nil, nil, nil, 
    Type.find_by(plano: "Outros", company: Company.find_by("description like ?", "%meo%"))
  ],
]

#Filling Packages
meo_telemovel_list.each do |description, price, tv, internet, movel, cartao, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, movel: movel, cartao: cartao, voz: voz, type: type)
end

meo_tv_net_voz_list.each do |description, price, tv, internet, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, voz: voz, type: type)
end

meo_gaming_list.each do |description, price, tv, internet, movel, cartao, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, movel: movel, cartao: cartao, voz: voz, type: type)
end

meo_outros_list.each do |description, price, tv, internet, movel, cartao, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, movel: movel, cartao: cartao, voz: voz, type: type)
end

puts "Filled MEO package"