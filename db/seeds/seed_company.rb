# Companies are all operators like vodafone, meo, nowo
# FILLING COMPANIES
["MEO","NOS","VODAFONE","NOWO","FAMILY",
 "BUSINESS","GAMES", "IMAGEN_1","IMAGEN_2",
 "IMAGEN_3","IMAGEN_4", "CONTACTANOS"].each do |company|

  Company.create! description: company
 end

puts "Companies Filled!"