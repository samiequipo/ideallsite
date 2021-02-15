# MEO

# M4 - TELEMOVEL
# description, price, tv, internet, movel, cartao, voz, type
meo_telemovel_list = [
  [ "M4", "51,99", "TV - 150 Canais MEOBox | Pack Standard", "Internet - 100/100 Mbps Download/upload", 
  "Móvel - 500 MB Máxima velocidade da rede 500 minutos + 500 SMS por cartão",
    "Cartões - 1 cartão", "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
  
  [ "Oferta mais Net em casa", "55,99", "TV - 200 Canais MEOBox | Pack Standard + Extra", 
    "Internet - 500/100 Mbps Download/upload", "Móvel - 1 GB Máxima velocidade da rede 3.500 minutos + 3.500 SMS por cartão",
    "Cartões - 1 cartão", "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
  
  [ "M4 - MEO com tudo", "99,99", 
    "TV - 200 Canais MEOBox | Pack Standard + Extra | 200 + €50/mês em canais e serviços premium e MEO Go Multi.", 
    "Internet - 1.000/400 Mbps Download/upload A máxima velocidade do mercado.", "Móvel - Dados, minutos e SMS ilimitados Máxima velocidade da rede",
    "Cartões - 1 cartão | ilimitado", "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
 
  [ "M4", "59,99", "TV - 200 Canais MEOBox | Pack Standard", 
    "Internet - 200/100 Mbps Download/upload", "Móvel - 2 GB Máxima velocidade da rede 3.500 minutos + 3.500 SMS por cartão",
    "Cartões - 2 cartão incluídos", "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
]

# M3 - TV-NET-VOZ
# description, price, tv, internet, movel, cartao, voz, type
meo_tv_net_voz_list = [
  [ "M4", "51,99", "TV - 150 Canais MEOBox | Pack Standard", "Internet - 100/100 Mbps Download/upload", 
    "Móvel - 500 MB Máxima velocidade da rede 500 minutos + 500 SMS por cartão",
    "Cartões - 1 cartão", "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
  
  [ "Oferta mais Net em casa", "55,99", "TV - 200 Canais MEOBox | Pack Standard + Extra", 
    "Internet - 500/100 Mbps Download/upload", "Móvel - 1 GB Máxima velocidade da rede 3.500 minutos + 3.500 SMS por cartão",
    "Cartões - 1 cartão", "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
  
  [ "M4 - MEO com tudo", "99,99", 
    "TV - 200 Canais MEOBox | Pack Standard + Extra | 200 + €50/mês em canais e serviços premium e MEO Go Multi.", 
    "Internet - 1.000/400 Mbps Download/upload A máxima velocidade do mercado.", "Móvel - Dados, minutos e SMS ilimitados Máxima velocidade da rede",
    "Cartões - 1 cartão | ilimitado", "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
 
  [ "M4", "59,99", "TV - 200 Canais MEOBox | Pack Standard", 
    "Internet - 200/100 Mbps Download/upload", "Móvel - 2 GB Máxima velocidade da rede 3.500 minutos + 3.500 SMS por cartão",
    "Cartões - 2 cartão incluídos", "VOZ - Chamadas incluídas Redes fixas nacionais 24h + 50 destinos internacionais (noite, 1.000 min)",
    Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%"))
  ],
]

meo_telemovel_list.each do |description, price, tv, internet, movel, cartao, voz, type|
  Package.create!(description: description, price: price, tv: tv, internet: internet, movel: movel, cartao: cartao, voz: voz, type: type)
end