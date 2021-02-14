# Companies are all operators like vodafone, meo, nowo
#create_table "packages", force: :cascade do |t|
#  t.string "tv"
#  t.string "internet"
#  t.string "movel"
#  t.string "cartao"
#  t.string "voz"
#  t.datetime "created_at", precision: 6, null: false
#  t.datetime "updated_at", precision: 6, null: false
#  t.string "price"
#  t.integer "company_id"
#  t.index ["company_id"], name: "index_packages_on_company_id"
#end

# FILLING MEO PACKAGE


Package.create! tv: "samsung" 
Package.create! tv: "movistar" 
Package.create! tv: "vodafone" 
Package.create! tv: "meo" 