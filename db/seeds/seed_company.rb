# Companies are all operators like vodafone, meo, nowo
# FILLING COMPANIES
["MEO","NOS","VODAFONE","NOWO"].each do |company|

  Company.create! description: company
 end

puts "Companies Filled!"