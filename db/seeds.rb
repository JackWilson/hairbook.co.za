# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   I will be using control variable to manage the seeds to be loaded in one file
#
load_hair_dressers = false
load_shops = false
load_sorbet_shops = false
load_stylists = false
load_stylists_extra = false
load_shop_stylist = false
load_clients = false
load_bookings = true
load_shop_settings = false
load_shop_workdays = false
load_shop_stylist_workdays = false
load_shop_calendars = false


# Lets create some Hair Dressers
#create_table "hair_dressers", force: :cascade do |t|
#  t.string   "name"
#  t.string   "logo_url"
#  t.string   "status"
#  t.datetime "created_at", null: false
#  t.datetime "updated_at", null: false
#end
if load_hair_dressers then
  HairDresser.create(name: "Head Boys", logo_url:"headBoys_logo.gif", status:"Active")
  HairDresser.create(name: "Palladium Hair", logo_url:"palladium_hair_logo.png", status:"Active")
  HairDresser.create(name: "Sorbet", logo_url:"sorbet.jpg", status:"Active")
  HairDresser.create(name: "The Corner Shop", logo_url:"theCornerShop.jpg", status:"Active")
end

# Now create some shops for these
#
#create_table "shops", force: :cascade do |t|
#  t.string   "name"
#  t.string   "address"
#  t.string   "contact_no"
#  t.string   "alt_contact_no"
#  t.string   "email"
#  t.string   "website"
#  t.string   "image_url"
#  t.string   "logo_url"
#  t.string   "theme"
#  t.boolean  "main_branch"
#  t.string   "status"
#  t.integer  "hair_dresser_id"
#  t.datetime "created_at",      null: false
#  t.datetime "updated_at",      null: false
#  t.index ["hair_dresser_id"], name: "index_shops_on_hair_dresser_id"
#end
if load_shops then
# Head Boys branches
Shop.create(name:'Head Boys - Brooklyn', address:'Shop 153, Ground Floor, Brooklyn Mall, Veale Street, Pretoria, 0181, South Africa' , contact_no:'012-346-3341' , alt_contact_no:'012-346-7147' , email:'headboyshairdressing@gmail.co.za' , website:'www.headboyshairdressing.co.za' , image_url:'Headboys1.jpg' , logo_url:'HeadBoys_logo.gif' , theme:'' , main_branch:true , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Head Boys').id)
Shop.create(name:'Head Boys - Menlyn', address:'Menlyn Mall, Menlyn, Pretoria, 0181, South Africa' , contact_no:'012-348-3355' , alt_contact_no:'' , email:'headboyshairdressing@gmail.co.za' , website:'www.headboyshairdressing.co.za' , image_url:'Headboys1.jpg' , logo_url:'HeadBoys_logo.gif' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Head Boys').id)
Shop.create(name:'Head Boys - Gift Acres', address:'Pretoria, 0181, South Africa' , contact_no:'012-365-1696' , alt_contact_no:'' , email:'headboyshairdressing@gmail.co.za' , website:'www.headboyshairdressing.co.za' , image_url:'Headboys1.jpg' , logo_url:'HeadBoys_logo.gif' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Head Boys').id)
Shop.create(name:'Head Boys - Atterbury', address:'Value Mart, Pretoria, 0181, South Africa' , contact_no:'012-991-6088' , alt_contact_no:'' , email:'headboyshairdressing@gmail.co.za' , website:'www.headboyshairdressing.co.za' , image_url:'Headboys1.jpg' , logo_url:'HeadBoys_logo.gif' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Head Boys').id)
Shop.create(name:'Head Boys - Stellenbosch', address:'Eikestad Mall, 43 Andringa Street, Stellenbosch town centre, Stellenbosch, South Africa' , contact_no:'082-774-5075' , alt_contact_no:'' , email:'headboyshairdressing@gmail.co.za' , website:'www.headboyshairdressing.co.za' , image_url:'Headboys1.jpg' , logo_url:'HeadBoys_logo.gif' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Head Boys').id)

# Palladium Branches
Shop.create(name:'Palladium Hair - Pretoria', address:'Shop 3, Waterkloof Heights Shopping Centre, 103 Club Avenue, Pretoria, 0181, South Africa' , contact_no:'012-460-2242' , alt_contact_no:'012-460-2243' , email:'' , website:'www.palladiumhair.com/' , image_url:'' , logo_url:'palladium_hair_logo.png' , theme:'' , main_branch:true , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Palladium Hair').id)
Shop.create(name:'Palladium Hair - Cape Town', address:'Shop 17, The Square, New Cape Quarter Extension, Somerset road, De Waterkant, Greenpoint, South Africa' , contact_no:'021-418-2242' , alt_contact_no:'021-418-2243' , email:'' , website:'www.palladiumhair.com/' , image_url:'' , logo_url:'palladium_hair_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Palladium Hair').id)

if load_sorbet_shops then
# Sorbet Stores
Shop.create(name:'Sorbet @The Park', address:'Shop LG 3 @ The Park Dirk Opperman Street Langenhovenpark Bloemfontein Free State 9301' , contact_no:'051-446-0029' , alt_contact_no:'076-827-2218' , email:'thepark@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Ballito', address:'Shop G51 Ballito Bay Mall Simbithi Dr Ballito KwaZulu-Natal 4399' , contact_no:'032-946-0457' , alt_contact_no:'' , email:'ballito@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Bedfordview', address:'Village View Van Buuren Road Johannesburg Gauteng 2007' , contact_no:'011-455-1917' , alt_contact_no:'011-450-2195 or 060-492-3279' , email:'bedfordview@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Belvedere Square', address:'Shop 6 Belvedere Rd Belvedere Square Rondebosch Western Cape 7735' , contact_no:'021-671-7631' , alt_contact_no:'' , email:'belvedere@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Benmore Gardens', address:'Shop G05 and G06 Benmore Gardens Cnr Grayston & Benmore Rd Benmore Gardens Sandton Gauteng 2196' , contact_no:'011-326-7770' , alt_contact_no:'' , email:'benmore@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Blairgowrie', address:'Shop BG 15 Blairgowrie Plaza Conrad Dr Blairgowrie Randburg Gauteng 2194' , contact_no:'011-781-5436' , alt_contact_no:'072-506-2675' , email:'blairgowrie@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Blue Hills', address:'Shop 59 Bue Hills Shopping Centre Cnr Olifantsfontein & African View Drive Rd Midrand Gauteng 1687' , contact_no:'011-318-0236' , alt_contact_no:'076-917-6902' , email:'bluehills@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Broadacres', address:'Phase 1 Shop 32 Broadacres Shopping Centre Cnr Cedar and Valley Rds Fourways Fourways Gauteng 2021' , contact_no:'011-465-1282' , alt_contact_no:'076-771-3401' , email:'broadacres@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Broadway', address:'Shop 16 C and D Astra Shopping Centre 16 Swapo Rd Durban KwaZulu-Natal 4051' , contact_no:'031-564-5486' , alt_contact_no:'082-765-7585' , email:'broadway@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Brooklyn Mall', address:'Shop 61 Level 2 Entrance 4 Brooklyn Mall Cnr Veale and Fehrsen St Muckleneuk Pretoria Pretoria Gauteng 0181' , contact_no:'012-346-4414' , alt_contact_no:'079-866-2394' , email:'Brooklyn@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Bryanston', address:'Shop 30 Upper Level Bryanston Shopping Centre Cnr William Nicol & Ballyclare Dr Bryanston Gauteng 2021' , contact_no:'011-463-3018' , alt_contact_no:'011-463-3750' , email:'bryanston@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Camps Bay', address:'Shop 109 The Promenade Victoria Road Camps Bay Camps Bay Western Cape 8040' , contact_no:'021-437-1755' , alt_contact_no:'' , email:'campsbay@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Canal Walk 1', address:'Shop 583 Upper level Canal Walk Shopping Centre Century Boulevard Century City Milnerton Milnerton Western Cape 7441' , contact_no:'021-555-4677' , alt_contact_no:'' , email:'canalwalk@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Canal Walk 2', address:'Shop 239 Lower level Canal Walk Shopping Centre Century Boulevard Century City Milnerton Western Cape 7441' , contact_no:'021-552-0300' , alt_contact_no:'081-897-3564' , email:'canalwalk2@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Cape Gate', address:'Shop U92 Cape Gate Regional Centre Cnr De Bron & Okavango Rds Brackenfell Brackenfell Western Cape 7561' , contact_no:'021-981-3736' , alt_contact_no:'' , email:'capegate@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Cape Quarter', address:'Unit 125 Cape Quarter Lifestyle Village 27 Somerset Rd Greenpoint Cape Town Western Cape 8005' , contact_no:'021-418-4308' , alt_contact_no:'' , email:'capequarter@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Carlswald', address:'Shops 35/36 Lifestyle Shopping Centre Cnr Lever & New Rds Midrand Gauteng 1684' , contact_no:'011-318-0302' , alt_contact_no:'072-362-2314' , email:'carlswald@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Carnival Mall', address:'Shop 159 Mall@Carnival Cnr Heidelberg & Airport Rds Dalpark Brakpan Brakpan Gauteng 1552' , contact_no:'011-915-6665' , alt_contact_no:'' , email:'carnival@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Cascades Lifestyle Centre', address:'Shop G12B Cascades Lifestyle Centre, 32 Mc Carthy Drive, Montrose, 3201. 3201' , contact_no:'033-347-1199' , alt_contact_no:'0636475341' , email:'cascades@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Cavendish', address:'Shop F05 and F06 Cavendish Connect (1st Floor next to Edgars) Dreyer St Claremont Western Cape 7735' , contact_no:'021-671-5222' , alt_contact_no:'079-637-6200' , email:'Cavendish@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Centurion Lifestyle Centre', address:'Shop 37 B Centurion Lifestyle Shopping Centre Cnr Lechen and Old Johannesburg Rd Centurion Gauteng 0157' , contact_no:'012-653-5203' , alt_contact_no:'' , email:'centurionlifestyle@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Centurion Mall', address:'Shop 128 Centurion Mall Heuwel Ave Centurion Gauteng 0157' , contact_no:'012-643-1063' , alt_contact_no:'' , email:'centurion@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Chilli Lane', address:'Shop 38 Chilli Lane Shopping Centre Cnr Rivonia & Leeuwkop Rd Sunninghill Gauteng 2157' , contact_no:'011-234-7120' , alt_contact_no:'082-299-4022' , email:'sunninghill@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Clearwater Mall', address:'Shop UM 10A Clearwater Mall Hendrik Potgieter Rd Strubens Valley Gauteng 1724' , contact_no:'011-475-4762' , alt_contact_no:'' , email:'Clearwater@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Constantia', address:'Shop 15 Constantia Courtyard Constantia Village 7 Spaanschemat River Rd Deurdrif Constantia Western Cape 7806' , contact_no:'021-794-6687' , alt_contact_no:'071-140-1372' , email:'Constantia@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Cradlestone', address:'Cradlestone Mall Shop U104 Cnr Hendrik Potgieter & Farrow Rd Ruimsig Roodepoort Krugersdorp Gauteng 1747' , contact_no:'011-662-2094' , alt_contact_no:'' , email:'cradlestone@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Cresta', address:'Shop R10 Upper Level Cresta Shopping Centre Beyers Naude Dr Cresta Gauteng 2194' , contact_no:'011-476-2508' , alt_contact_no:'011-478-2965' , email:'cresta@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Crowthorne', address:'Shop 17 Crowthorne Shopping Centre Main Rd Kyalami Gauteng 1684' , contact_no:'011-702-3068' , alt_contact_no:'082-813-2271' , email:'crowthorne@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Dainfern', address:'Shop 13 Dainfern Square Cnr William Nicol & Broadacres Dainfern Gauteng 2191' , contact_no:'011-027-3055' , alt_contact_no:'' , email:'dainfern@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Douglasdale', address:'Shop 30 Douglasdale Village Shopping Centre Cnr Douglas & Leslie Dr Douglasdale Gauteng 2191' , contact_no:'011-462-1604' , alt_contact_no:'' , email:'douglasdale@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Drybar Farrarmere', address:'Shop 40/42 C The Square @ FarrarmereCnr Kei & Maelstroom Rds, Farrarmere, Benoni 1511' , contact_no:'011-425-2567' , alt_contact_no:'076-084-9252' , email:'farrarmere@sorbetdrybar.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet East Rand Mall', address:'Shop 182, Entrance 2 East Rand Mall Bentel Ave Boksburg North Gauteng 1459' , contact_no:'011-823-5170' , alt_contact_no:'' , email:'eastrand@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Eastgate', address:'Shop U167 Eastgate Shopping Centre 43 Bradford Road Bedfordview Gauteng 2008' , contact_no:'011-615-0191' , alt_contact_no:'079-855-9749' , email:'eastgate@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Elridge Corner', address:'Shop 29 Elridge Corner Cnr Elizabeth & Ridge Rd Bartlett Boksburg Gauteng 1459' , contact_no:'011-894-2053' , alt_contact_no:'072-348-8866' , email:'elridge@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Epsom Downs', address:'Shop 21 Epsom Downs Shopping Centre, 13 Sloane Street, Bryanston 2191' , contact_no:'011-028-8585' , alt_contact_no:'063-697-5828' , email:'epsomdowns@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Farrarmere', address:'Shop 42 The Square @ Farrarmere Cnr Kei & Maelstroom Rds Farrarmere Benoni Gauteng 1511' , contact_no:'011-849-7851' , alt_contact_no:'061-068-9245' , email:'farrarmere@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Ferndale Village', address:'Shop F06 Ferndale Village Cnr Oxford St & Main Ave Ferndale Randburg Gauteng 2194' , contact_no:'011-326-2361' , alt_contact_no:'082-293-0180' , email:'Ferndale@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Flanders Mall', address:'Shop 7 Flanders Mall 14 Flanders Drive Mount Edgecombe Durban KwaZulu-Natal 6070' , contact_no:'031-539-1114' , alt_contact_no:'031-539-5163' , email:'flanders@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Florida Junction', address:'Shop 16 Florida Junction Cnr Christiaan De Wet & Ontdekkers Rds Florida Park Roodepoort Gauteng 1709' , contact_no:'011-028-7854' , alt_contact_no:'073- 955-0153' , email:'floridajunction@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Forest Hill', address:'Shop 54 Forest Hill City N14 Monavoni Centerion Gauteng 0187' , contact_no:'012-668-1897' , alt_contact_no:'076-565-5991' , email:'foresthill@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Fourways', address:'Shop M05 Entrance 4 Mezzanine level Fourways Mall William Nicol Dr & Fourways Boulevard Fourways Gauteng 2055' , contact_no:'011-465-7399' , alt_contact_no:'011-467-3001' , email:'fourways@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Galleria', address:'Shop G03/04 Galleria Mall Cnr Moss Kolnik & Arbour Roads Amanzimtoti Durban kwaZulu-Natal 4126' , contact_no:'031-904-1483' , alt_contact_no:'083-228-0620' , email:'galleria@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Gardens', address:'41 Ground Floor Gardens Shopping Centre Cnr Mill & Buitenkant Streets Gardens Oranjezicht Western Cape 8001' , contact_no:'021-462-5942' , alt_contact_no:'021-462-5932 or 076-274-5521' , email:'gardens@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Gateway', address:'Shop G 073 Gateway Theatre of Shopping 1 Palm Boulevard Umhlanga Ridge Durban kwaZulu-Natal 4319' , contact_no:'031-566-3208' , alt_contact_no:'' , email:'gateway@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Glen Acres', address:'Shop 10 Glen Acres Shopping Centre Cnr Dann & Monument Roads Glen Marais Kempton Park Johannesburg Gauteng 1619' , contact_no:'011-972-1416' , alt_contact_no:'079-112-7052' , email:'glenacres@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Glen Village', address:'Shop 18 & 19 Glen Village Shopping Centre Cnr Solomon Mahlangu Olympus & Skukuza Rds Faerie Glen Ext 9 Pretoria Gauteng 81' , contact_no:'012-991-2646' , alt_contact_no:'061-468-0887' , email:'glenvillage@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Glenfair', address:'Shop 41 Glenfair Boulevard Cnr Lynnwood Rd & Daventry Street Lynnwood Manor Pretoria Gauteng 0081' , contact_no:'012-361-1768' , alt_contact_no:'' , email:'glenfair@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Glengarry', address:'Shop 3 Glengarry Shopping Centre Cnr De Bron & Fairtrees Road Brackenfell Cape Town 7550' , contact_no:'021-981-1087' , alt_contact_no:'076 524 7390' , email:'glengarry@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Glenvista', address:'Shop U32A Glenvista Shopping Centre Cnr Biggarsberg & Kirby Bellar Johannesburg Gauteng 2091' , contact_no:'011-432-8373' , alt_contact_no:'011-026-7553' , email:'glenvista@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Granada Square', address:'Shop 06 Granada Square 16 Chartwell Drive Umhlanga Rocks Umhlanga Rocks kwaZulu-Natal 4320' , contact_no:'031-561-2538' , alt_contact_no:'031-825-3544' , email:'granada@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Greenside', address:'139 Greenway Street Greenside Johannesburg Gauteng 2193' , contact_no:'011-646-8346' , alt_contact_no:'073-258-0119' , email:'greenside@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Greenstone', address:'Shop SL 127, Greenstone Shopping Centre, Cnr Modderfontein & Van Riebeeck Street, North East Johannesburg 2000' , contact_no:'011-452-0422' , alt_contact_no:'073-716-5176' , email:'greenstone@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Groenkloof', address:'Shop 9 Groenkloof Plaza Cnr George Storrar Dr & Bronkhorst St Groenkloof Pretoria Gauteng 0027' , contact_no:'012-340-0202' , alt_contact_no:'061-478-6500' , email:'groenkloof@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Hartbeespoort', address:'Shop 103 A Village Mall@ Hartbeespoort Magalies Boulevard Schoemansville Hartbeespoort 0216' , contact_no:'012-253-2919' , alt_contact_no:'081-878-5678' , email:'hartebeespoort@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Hazeldean', address:'Shops 15 & 16 Hazeldean Square Shopping CentreCnr Graham & Silverlakes Road, Silverlakes, Pta 0054' , contact_no:'012-809-4347' , alt_contact_no:'' , email:'hazeldean@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Heidelberg Mall', address:'Shop 62C Heidelberg Mall Cnr Groenfontein & Jacobs Roads, Heidelberg Ext 25 1441' , contact_no:'016-341-2402' , alt_contact_no:'' , email:'heidelberg@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Highveld Mall', address:'Shop 227 Highveld Mall Mandela Street eMalahleni (Witbank) 1035' , contact_no:'013-692-3721' , alt_contact_no:'' , email:'highveldmall@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Hillcrest (KZN)', address:'Shop A12 Lillies Corner 12 Old Main Road Hillcrest 4037' , contact_no:'031-765-4186' , alt_contact_no:'' , email:'hillcrest@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Hillcrest Boulevard', address:'Shop 19 Hillcrest Boulevard Lynwood Road Pretoria 0083' , contact_no:'012-362-0205' , alt_contact_no:'' , email:'hillcrestboulevard.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Hout Bay', address:'Shop C10 (opp Nedbank) , Mainstream Mall, Main Road Hout Bay 7806' , contact_no:'021-790-8519' , alt_contact_no:'' , email:'houtbay@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Howard Centre', address:'Shop G21 Howard Centre Forest DrivePinelands, Cape Town 7430' , contact_no:'021-531-0552' , alt_contact_no:'' , email:'howardcentre@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Hurlingham', address:'Shop 9PNP on NicolCnr William Nicol and Republic RoadsHurlingham2196 2196' , contact_no:'011-326-4795' , alt_contact_no:'' , email:'nicol@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Hyde Park', address:'Shop 14 Level 2 Hyde Park Shopping Centre Hyde Park 2196' , contact_no:'011-325-5214' , alt_contact_no:'060-806-0768' , email:'hyde@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Jean Crossing', address:'Shop 34B Jean Crossing Cnr Jean Ave & N1 Highway Die Hoewes Ext Centurion Gauteng 0157' , contact_no:'012-664-0819' , alt_contact_no:'061-465-0790' , email:'jeancrossing@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Kenilworth', address:'Shop G004 Pam Golding on Main Cnr Main & Summerly Rds Kenilworth Cape Town Western Cape 7708' , contact_no:'021-761-4576' , alt_contact_no:'021-761-6356 or 079-397-9611' , email:'kenilworth@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Killarney Mall', address:'Shop 80 Killarney Mall 60 Cnr Fourth St & Riviera Rd Killarney Johannesburg Gauteng 2193' , contact_no:'011-646-3796' , alt_contact_no:'076-415-9341' , email:'killarney@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Klersdorp', address:'Shop 136 Matlosana Mall N12 Klerksdorp Klerksdorp North West 2571' , contact_no:'018-462-0977' , alt_contact_no:'079-314-4030' , email:'klerksdorp@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Kolonnade', address:'Shop 66 B Kolonnade Shopping Centre Cnr Sefako Makgatho & Dr Van der Merwe St Montana Park Pretoria Gauteng 0159' , contact_no:'012-548-0892' , alt_contact_no:'074-486-5135' , email:'kolonnade@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Kyalami', address:'Shop 19 Kyalami on Main Dytchley & Woodmead Main Dr Kyalami Johannesburg Gauteng 1684' , contact_no:'011-027-3311' , alt_contact_no:'' , email:'kyalami@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet L Corro', address:'Shop 5 L Corro Shopping Centre Weltevreden Rd and Bagley Terrace Northcliff Johannesburg Gauteng 2195' , contact_no:'011-476-1433' , alt_contact_no:'' , email:'lcorro@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet La Lucia', address:'Shop 23/24 La Lucia Mall 90 William Campbell Dr La Lucia Durban KwaZulu-Natal 4319' , contact_no:'031-572-6632' , alt_contact_no:'081-805-2919' , email:'lalucia@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Lifestyle Crossing', address:'Shop 12 Lifestyle Crossing West Rand Hendrik Potgieter Rd Wilgeheuwel Ext 30 Johannesburg Gauteng 1734' , contact_no:'011-027-4471' , alt_contact_no:'076-218-3235' , email:'lifestylecrossing@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Lonehill', address:'Shop LL23 Lonehill Shopping Centre Lonehill Boulevard Lonehill Johannesburg Gauteng 2191' , contact_no:'011-467-5564' , alt_contact_no:'072-520-1435' , email:'lonehill@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Mall @ Reds', address:'Shop 25 The Mall @ Reds Hendrik Verwoerd Dr & Rooihuiskraal Rd Rooihuiskraal Ext 15 Wierda Park Pretoria Gauteng 0149' , contact_no:'012-656-0567' , alt_contact_no:'082-348-5702' , email:'redsmall@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Mall of Africa', address:'Shop 2034 Mall of Africa, Magwa Crescent, Waterfall City, Midrand 1682' , contact_no:'078-365-1655' , alt_contact_no:'011-517-2441' , email:'mallofafrica@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Mall of the South', address:'Shop G131 Mall of the South Cnr Klipriver Rd & Swartkoppies Alberton Alberton Gauteng 1447' , contact_no:'011-682-2579' , alt_contact_no:'082-871-8446' , email:'mallofthesouth@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Meadowridge', address:'Shop 13 Park nâ€™ Shop Figrove Way Meadowridge Cape Town Western Cape 7806' , contact_no:'021-712-3342' , alt_contact_no:'062-166-2007' , email:'meadowridge@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Melrose Arch', address:'Shop SL 04 Building G The Piazza Melrose Arch Melrose North Johannesburg Gauteng 2196' , contact_no:'011-684-1944' , alt_contact_no:'082-477-4483' , email:'melrosearch@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Menlyn Maine', address:'Shop 10, Menlyn Maine, Central Square, January Masilela Drive & Armarand Ave,Waterkloof, Ext 2 0181' , contact_no:'012-348-1075' , alt_contact_no:'076-580-3418' , email:'menlynmaine@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Menlyn Park', address:'Shop LF47 (Entrance 5) Menlyn Shopping Centre Cnr Atterbury & Lois Ave Menlyn Park Pretoria Gauteng 0063' , contact_no:'012-348-4906' , alt_contact_no:'072-056-1018' , email:'menlyn@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Meyersdal', address:'Shop 20 Meyersdal Mall Cnr Hennie Alberts & Michelle Ave Meyersdal Alberton Gauteng 1448' , contact_no:'011-867-3719' , alt_contact_no:'072-948-1320' , email:'meyersdal@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Middelburg Mall', address:'Shop 113 Middelburg Mall Sondagsrivier Street Middelburg Middelburg Mpumalanga 1050' , contact_no:'013-244-1695' , alt_contact_no:'076-452-3455' , email:'middelburg@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Midlands Mall', address:'Shop 45 (Ground Floor) Liberty Midlands Mall 50 Sanctuary Rd Pietermaritzburg KwaZulu-Natal 3201' , contact_no:'071-888-6740' , alt_contact_no:'033-342-3162' , email:'midlandsmall@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Montclare', address:'Shop 3 Montclare Place Cnr Main & Campground Rd Claremont Newlands Western Cape 7708' , contact_no:'021-671-1644' , alt_contact_no:'' , email:'montclare@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Morningside', address:'U21 Morningside Shopping Centre Cnr Rivonia & Outspan Rds Morningside Johannesburg Gauteng 2196' , contact_no:'011-025-8973' , alt_contact_no:'011-025-8972' , email:'morningside@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Nelspruit', address:'Shop 6A The Grove Shopping Centre R40 Nelspruit Nelspruit Mpumalanga 1200' , contact_no:'013-757-1014' , alt_contact_no:'083-667-9044' , email:'nelspruit@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet New Redruth', address:'Shop 11 New Redruth Village Cnr St Austell & Camborne New Redruth Alberton Gauteng 1448' , contact_no:'011-869-7311' , alt_contact_no:'076-330-0823' , email:'newredruth@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Nicolway', address:'Shop L26 Nicolway Shopping Centre William Nicol Dr Bryanston Gauteng 2191' , contact_no:'011-706-0811' , alt_contact_no:'076-162-4908' , email:'nicolway@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Northcliff Square', address:'Shop 11 & 12 Northcliff Square Cnr Beyers Naude & Milner St Northcliff Johannesburg Gauteng 2195' , contact_no:'011-782-7356' , alt_contact_no:'079-377-8559' , email:'northcliffsquare@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Northgate', address:'Shop 252 B Northgate Shopping Centre Cnr Northumberland Rd & Olievenhout Ave Northriding Randburg Gauteng 2162' , contact_no:'011-794-4357' , alt_contact_no:'079-745-6280' , email:'northgate@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Norwood', address:'Norwood Mall 6th Ave & Hamlin St Gardens/Norwood Johannesburg Gauteng 2062' , contact_no:'011-728-4001' , alt_contact_no:'011-728-2088' , email:'norwoodmall@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Oaklands', address:'2nd Floor Oaklands Shopping Centre Kruger Street Oaklands Johannesburg Gauteng 2192' , contact_no:'011-483-1162' , alt_contact_no:'073-470-6689' , email:'oaklands@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Paarl Mall', address:'Shop 37 Paarl Mall Cecilia Street Paarl (Woolworths entrance) Paarl Western Cape 7624' , contact_no:'021 863 2609' , alt_contact_no:'083 475 1991' , email:'paarl@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Paddocks', address:'Paddocks Shopping Centre Cnr Racecourse Rd and Grand National Boulevard Milnerton Cape Town Western Cape 7441' , contact_no:'021-552-2441' , alt_contact_no:'082-501-6934' , email:'paddocks@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Parkhurst', address:'Shop 1 â€“ 22 Fourth Avenue Cnr Tenth Street Parkhurst Johannesburg Gauteng 2193' , contact_no:'011-447-1588' , alt_contact_no:'' , email:'parkhurst@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Parktown Quarters', address:'Shop 14 ,Parktown Quarter cnr 3rd/7th Avenues Parktown North Johannesburg Gauteng 2193' , contact_no:'011-447-3491' , alt_contact_no:'' , email:'parktown@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Paulshof', address:'Shop 6 Cambridge Crossing Cnr Witkoppen & Stone Haven Roads Paulshof Sandton Johannesburg Gauteng 2191' , contact_no:'011-803-4411' , alt_contact_no:'011-807-2469' , email:'paulshof@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Pinehurst', address:'Shop 24 Pinehurst Shopping Centre Pinehurst Drive & Brackenfell Boulevard Durbanville Cape Town Western Cape 7569' , contact_no:'021-975-1149' , alt_contact_no:'' , email:'pinehurst@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Polokwane', address:'Shop L79 Mall of the North Cnr R81 & N1 Bypass Polokwane KwaZulu-Natal 2194' , contact_no:'015-265-1279' , alt_contact_no:'076-587-1179' , email:'polokwane@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Riverside', address:'Shop 17 Riverside Square Cnr Bryanston Drive & Cambridge Road Bryanston Johannesburg 2191' , contact_no:'011-463-7170' , alt_contact_no:'011-463-7174' , email:'riverside@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Rivonia Village', address:'Shop S52 Rivonia Village Rivonia Boulevard Johannesburg Gauteng 2128' , contact_no:'011-803-8887' , alt_contact_no:'083-585-7047' , email:'rivoniavillage@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Rondebosch', address:'Shop 16 Rondebosch Main Main Road Rondebosch Cape Town Western Cape 7700' , contact_no:'021-685-5483' , alt_contact_no:'' , email:'Rondebosch@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Rosebank Mall', address:'Shop 108 Rosebank Mall Bath Avenue Rosebank Johannesburg Gauteng 2196' , contact_no:'011-880-2239' , alt_contact_no:'071-798-9882' , email:'rosebankmall@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Rosebank The Zone', address:'1st Floor Block B Regents Place (above Ocean Basket in The Zone) Cradock Ave Rosebank Johannesburg Gauteng 2196' , contact_no:'011-447-3914' , alt_contact_no:'073-259-8257' , email:'rosebank@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Rustenburg', address:'Shop 58 A Waterfall Mall 1 Augrabies Street Rustenburg Rustenburg Gauteng 0300' , contact_no:'014-537-2011' , alt_contact_no:'079-799-6503' , email:'rustenburg@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Sandton', address:'113 Nelson Mandela Square Cnr Maude & 5th Streets Johannesburg Gauteng 2031' , contact_no:'011-784-0188' , alt_contact_no:'-011-883-2732' , email:'sandton@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Sasolburg', address:'Shop 13 Sasolburg Square John Voster Ave Sasolburg Sasolburg Free State 1974' , contact_no:'060-868-1324' , alt_contact_no:'016-976-8408' , email:'sasolburg@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Sea Point', address:'Shop 16 Adelphi Centre Main Road Sea Point Cape Town Western Cape 8050' , contact_no:'021-433-1417' , alt_contact_no:'' , email:'seapoint@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Senderwood', address:'Shop 2 Senderwood Square 15 Chaucer Ave Senderwood Bedfordview Johannesburg gauteng 2007' , contact_no:'011-453-1878' , alt_contact_no:'072-925-4648' , email:'senderwood@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Silvercrest', address:'Shop 7 Silvercrest Shopping Centre 11 Swemmer Road Silvamonte Johannesburg Gauteng 2192' , contact_no:'011-346-2691' , alt_contact_no:'071-950-7047' , email:'silvercrest@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Somerset Mall', address:'Shop G341 Somerset Mall Centenary Drive & Intersection of N2 & R44 Somerset West Cape Town Western Cape 7130' , contact_no:'021-851-4004' , alt_contact_no:'060-865-1174' , email:'somerset@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Steenberg', address:'Shop F3 Steenberg Village Steenberg Road Constantia Cape Town Western Cape 7806' , contact_no:'021-701-0365' , alt_contact_no:'082-436-4603' , email:'steenberg@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Stellenbosch', address:'Shop AW 107/108 Eikestad Mall Bird Street Stellenbosch Western Cape Cape Town Western Cape 7600' , contact_no:'021-883-2427' , alt_contact_no:'' , email:'stellenbosch@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Sun Valley Noordhoek', address:'Shop 25 Sun Valley Shopping Centre Ou Kaapse Weg Noordhoek Cape Town Western Cape 7975' , contact_no:'021-785-2767' , alt_contact_no:'060-805-5888' , email:'sunvalley@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Sunward Park', address:'Shop 20 Sunward Park Lifestyle Centre Cnr Trichardt & Kingfisher Road Sunward Park Boksburg Cape Town Gauteng 1459' , contact_no:'011-913-0845' , alt_contact_no:'074-794-8110' , email:'sunward@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet The Club', address:'Shop 111 The Club Retail Park Cnr Pinaster & Dely Roads Hazelwood Pretoria Pretoria Gauteng 0081' , contact_no:'012-346-1827' , alt_contact_no:'084-284-1222' , email:'theclub@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet The Glen', address:'Shop M 75 The Glen Shopping Centre Cnr Orpen & Letaba Streets Oakdene Johannesburg Gauteng 2001' , contact_no:'011-436-1066' , alt_contact_no:'' , email:'theglen@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet The Grove', address:'Shop U03 The Grove Mall Cnr Lynnwood and Simon Vermooten Roads Pretoria East Gauteng 0184' , contact_no:'012-807-0485' , alt_contact_no:'079-422-2096' , email:'thegrove@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet The Pavilion', address:'Shop 318 The Pavilion Shopping Centre Jack Martens Drive Westville Durban KwaZulu-Natal 3611' , contact_no:'031-265-8409' , alt_contact_no:'' , email:'pavilion@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet The Point', address:'Shop 17 The Point (Checkers Centre) Regent Road Sea Point Cape Town Western Cape 8005' , contact_no:'021-433-1306' , alt_contact_no:'083-275-8162' , email:'thepoint@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Tokai', address:'Shop F218 Blue Route Mall 15 Tokai Road Dreyersdal Western Cape 7945' , contact_no:'021-712-5740' , alt_contact_no:'' , email:'tokai@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Tyger Valley', address:'Shop 594 Tyger Valley Shopping Center (entrace 13) Willie Van Schoor Avenue Cnr Bill Bezuidenhout & Willie Van Schoor Ave Bellville Bellville Park Western Cape 7530' , contact_no:'021-914-0147' , alt_contact_no:'' , email:'tygervalley@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet V & A Waterfront', address:'Kiosk K16 Victoria Wharf Shopping Centre Dock Road Cape Town Western Cape 8002' , contact_no:'021-425-0234' , alt_contact_no:'-076-052-0497' , email:'waterfront@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Vaal Mall', address:'Shop 148 Vaal Mall Cnr Barrage Rd & Rossini Boulevard Vanderbijlpark Johannesburg Gauteng 1911' , contact_no:'016-931-0616' , alt_contact_no:'-073-746-9499' , email:'vaalmall@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Walmer Park', address:'Walmer Park Shopping Centre Main Road between 14th and 16th Avenues Walmer Port Elizabeth Eastern Cape 6070' , contact_no:'041-823-9626' , alt_contact_no:'' , email:'walmerpark@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Watercrest', address:'Shop UG 16 A Watercrest Mall 141 Inanda Road Waterfall Durban KwaZulu-Natal 3652' , contact_no:'031-763-1406' , alt_contact_no:'071-995-4166' , email:'watercrest@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Waterfall Corner', address:'Shop 25, Waterfall Corner, Maxwell Drive and Woodmead Drive 2157' , contact_no:'011-025-7441' , alt_contact_no:'073-839-3490' , email:'waterfallcorner@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Waterstone', address:'Shop 9 Waterstone Village Cnr Main Rd & R44 Somerwest West Cape Town Western Cape 7110' , contact_no:'021-851-8047' , alt_contact_no:'-072-800-6476' , email:'waterstone@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Westgate', address:'Shop 0062 Westgate Shopping Centre 120 Ontdekkers Road Roodepoort Johannesburg Gauteng 1724' , contact_no:'011-768-8644' , alt_contact_no:'' , email:'westgate@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Windermere', address:'Shop 18 Windermere Centre 163-177 Windermere Road Morningside Durban KwaZulu-Natal 4001' , contact_no:'031-303-2919' , alt_contact_no:'079-712-7662' , email:'windermere@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Wonderboom', address:'Shop G41 Wonderboom Junction Cnr Lavender and Lavender East Roads Annlin West Pretoria Gauteng 0001' , contact_no:'012-543-0157' , alt_contact_no:'076-929-4840' , email:'wonderboom@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Wonderpark', address:'Shop 312 Wonderpark Cnr Heinrich Ave & Old Brits Road Karenpark Karenpark Gauteng 0183' , contact_no:'012-549-0227' , alt_contact_no:'062-258-7959' , email:'wonderpark@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
Shop.create(name:'Sorbet Woodlands Boulevard', address:'Shop 226 Woodlands Boulevard Cnr De Villebois Mareuil & Garsfontein Roads Pretoria Gauteng 0042' , contact_no:'012-997-2410' , alt_contact_no:'084-877-1222' , email:'woodlands@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'Sorbet').id)
end
# The Corner Shop is net een
Shop.create(name:'The Corner Shop', address:'Shop 226 Woodlands Boulevard Cnr De Villebois Mareuil & Garsfontein Roads Pretoria Gauteng 0042' , contact_no:'012-997-2410' , alt_contact_no:'084-877-1222' , email:'woodlands@sorbet.co.za' , website:'www.sorbet.co.za' , image_url:'' , logo_url:'Temp_sorbet_logo.png' , theme:'' , main_branch:false , status: 'Active', hair_dresser_id:HairDresser.find_by(name: 'The Corner Shop').id)
end

#
# Loading the Shop Settings per shop
#
#create_table "shop_settings", force: :cascade do |t|
#  t.integer  "calender_slot_size"
#  t.integer  "days_ahead_calender"
#  t.integer  "shop_id"
#  t.date     "start_date"
#  t.datetime "created_at",          null: false
#  t.datetime "updated_at",          null: false
#  t.index ["shop_id"], name: "index_shop_settings_on_shop_id"
#end
if load_shop_settings then
  ShopSetting.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, calender_slot_size:30, days_ahead_calender: 30, start_date:Date.parse("2016/11/01")  )
  ShopSetting.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, calender_slot_size:30, days_ahead_calender: 30, start_date:Date.parse("2016/11/01")  )
  ShopSetting.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, calender_slot_size:30, days_ahead_calender: 30, start_date:Date.parse("2016/11/01")  )
  ShopSetting.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, calender_slot_size:30, days_ahead_calender: 30, start_date:Date.parse("2016/11/01")  )
  ShopSetting.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, calender_slot_size:30, days_ahead_calender: 30, start_date:Date.parse("2016/11/01")  )

  ShopSetting.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, calender_slot_size:15, days_ahead_calender: 30, start_date:Date.parse("2016/11/01")  )
  ShopSetting.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, calender_slot_size:15, days_ahead_calender: 30, start_date:Date.parse("2016/11/01")  )

  ShopSetting.create(shop_id:Shop.find_by(name:"The Corner Shop").id, calender_slot_size:30, days_ahead_calender: 30, start_date:Date.parse("2016/11/01")  )

end

#
# Create some workdays per shop
#create_table "shop_workdays", force: :cascade do |t|
#  t.integer  "shop_id"
#  t.string   "day"
#  t.time     "start_time"
#  t.time     "close_time"
#  t.boolean  "open"
#  t.datetime "created_at", null: false
#  t.datetime "updated_at", null: false
#  t.index ["shop_id"], name: "index_shop_workdays_on_shop_id"
#end

if load_shop_workdays then
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, day:"Workday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, day:"Sunday", start_time:Time.parse("9:00 AM"), close_time:Time.parse("1:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, day:"Monday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:false)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, day:"Tuesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, day:"Wednesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, day:"Thursday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, day:"Friday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Brooklyn").id, day:"Saturday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("3:00 PM"), open:true)

  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, day:"Workday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, day:"Sunday", start_time:Time.parse("9:00 AM"), close_time:Time.parse("1:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, day:"Monday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:false)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, day:"Tuesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, day:"Wednesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, day:"Thursday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, day:"Friday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Menlyn").id, day:"Saturday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("3:00 PM"), open:true)

  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, day:"Workday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, day:"Sunday", start_time:Time.parse("9:00 AM"), close_time:Time.parse("1:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, day:"Monday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:false)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, day:"Tuesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, day:"Wednesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, day:"Thursday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, day:"Friday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Gift Acres").id, day:"Saturday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("3:00 PM"), open:true)

  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, day:"Workday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, day:"Sunday", start_time:Time.parse("9:00 AM"), close_time:Time.parse("1:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, day:"Monday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:false)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, day:"Tuesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, day:"Wednesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, day:"Thursday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, day:"Friday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Atterbury").id, day:"Saturday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("3:00 PM"), open:true)

  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, day:"Workday", start_time:Time.parse("8:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, day:"Sunday", start_time:Time.parse("9:00 AM"), close_time:Time.parse("1:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, day:"Monday", start_time:Time.parse("8:00 AM"), close_time:Time.parse("6:00 PM"), open:false)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, day:"Tuesday", start_time:Time.parse("8:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, day:"Wednesday", start_time:Time.parse("8:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, day:"Thursday", start_time:Time.parse("8:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, day:"Friday", start_time:Time.parse("8:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Head Boys - Stellenbosch").id, day:"Saturday", start_time:Time.parse("8:00 AM"), close_time:Time.parse("3:00 PM"), open:true)

  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, day:"Workday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, day:"Sunday", start_time:Time.parse("9:00 AM"), close_time:Time.parse("1:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, day:"Monday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:false)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, day:"Tuesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, day:"Wednesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, day:"Thursday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, day:"Friday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Pretoria").id, day:"Saturday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("3:00 PM"), open:true)

  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, day:"Workday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, day:"Sunday", start_time:Time.parse("9:00 AM"), close_time:Time.parse("1:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, day:"Monday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:false)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, day:"Tuesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, day:"Wednesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, day:"Thursday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, day:"Friday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"Palladium Hair - Cape Town").id, day:"Saturday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("3:00 PM"), open:true)

  ShopWorkday.create(shop_id:Shop.find_by(name:"The Corner Shop").id, day:"Workday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"The Corner Shop").id, day:"Sunday", start_time:Time.parse("9:00 AM"), close_time:Time.parse("1:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"The Corner Shop").id, day:"Monday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:false)
  ShopWorkday.create(shop_id:Shop.find_by(name:"The Corner Shop").id, day:"Tuesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"The Corner Shop").id, day:"Wednesday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"The Corner Shop").id, day:"Thursday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"The Corner Shop").id, day:"Friday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("6:00 PM"), open:true)
  ShopWorkday.create(shop_id:Shop.find_by(name:"The Corner Shop").id, day:"Saturday", start_time:Time.parse("7:00 AM"), close_time:Time.parse("3:00 PM"), open:true)

end
  
#extra comment koos
# There will be a problem of uniqueness if we use the name only
# Clearly we can have the same name at many shops, and mostly it will represent different people
# We could therefore look at uniqueness of the stylist, not in the DB but in the visual selection tools.
# We could have say 5 Angels. And Angel 1 can work at about 3 shops maxs simultaneously, but more over time
# As far as the client is concerned, their link to Angel (say 1) remains unless they break and select another Stylist as preferred.
#
if load_stylists then

  # these ones have their own photos
  Stylist.create(name: 'Angel', image_url:'angel.jpg')
  Stylist.create(name: 'Mandy', image_url:'many.jpg')
  Stylist.create(name: 'Marco', image_url:'marco.jpg')
  Stylist.create(name: 'Michael', image_url:'michael.jpg')
  Stylist.create(name: 'Patricia', image_url:'Patrica.jpg')
  Stylist.create(name: 'Ruben', image_url:'ruben.jpg')
  Stylist.create(name: 'Suzi', image_url:'Suzi.jpg')
  Stylist.create(name: 'Jason', image_url:'jason.jpg')
  Stylist.create(name: 'Thomas', image_url:'thomas.jpg')
end

if load_stylists_extra then
  # first clean out all the generated stylist
  #
  Stylist.where(:id => 10..10000).destroy_all


  female_names = %w{Angelina Angelique Angie Anna April Beatrix Bianca Cathy Cheryl Demmy Diana Dominique Donna Estelle Gladys Hazel Jean Jennie Jennifer Jenny Kate Kgomotso Lane Laura Leandri Lee Li-Anne Lianne Lydia Marie Mary Mary-Anne Nadia Nicki Nicole Olga Pamela Petra Reese Rina Rosie Sam Samantha Sandra Sue Sunette Tania Tanya Thabang Thandi Thembi}
  male_names = %w{Abel Albert Bongani Bruce Charles Chris Christian Conrad Dan David Deon Derick Dion Dirk Edward Forest Harrison Hendri Hendrik Jack James John Joseph Konrad Koos Lebogang Leon Lian Mark Markus Michel Moses Nick Patrick Paul Percy Pete Peter Petros Sam Simon Sipho Trevor William}

  grp_start = [0, 0.5, 0.25, 0.01, 0.75, 0.35, 0.8, 0.05, 0.9]
  grp_end = [1, 1, 0.5, 0.25, 1, 0.65, 1, 0.25, 1]
  female_size = female_names.size
  male_size = male_names.size

  9.times do |g|
    group = "_#{g}"
    for i in Integer(female_size*grp_start[g])...Integer(female_size*grp_end[g])
      Stylist.create(name:"#{female_names[i]}#{group}", image_url:'female.jpg')
    end
    for i in Integer(male_size*grp_start[g])...Integer(male_size*grp_end[g])
      Stylist.create(name:"#{male_names[i]}#{group}", image_url:'male.jpg')
    end

  end

end

  # these ones will use the default male/female images

# Assign some stylists to shops
#
#create_table "shop_stylists", force: :cascade do |t|
#  t.integer  "shop_id"
#  t.integer  "stylist_id"
#  t.date     "start_date"
#  t.date     "end_date"
#  t.string   "status"
#  t.datetime "created_at", null: false
#  t.datetime "updated_at", null: false
#  t.index ["shop_id"], name: "index_shop_stylists_on_shop_id"
#  t.index ["stylist_id"], name: "index_shop_stylists_on_stylist_id"
#end
if load_shop_stylist then
  # first clean out all the generated stylist
  #
  ShopStylist.where(:id => 0..10000).destroy_all


  start = Date.parse("2016/11/01")
  shop_id = Shop.find_by(name:"Head Boys - Brooklyn").id
  9.times do |stylist_id|
    ShopStylist.create(shop_id:shop_id, stylist_id:stylist_id, start_date:start, status:'Active')
  end

  # Generate the rest randomly
  #
  low_stylist_id = Stylist.find_by(name:"Angelina_0").id
  high_stylist_id = Stylist.find_by(name:"William_8").id
  rand_max = high_stylist_id - low_stylist_id

  shop_id = Shop.find_by(name:"Head Boys - Menlyn").id
  ShopStylist.create(shop_id:shop_id, stylist_id:9, start_date:start, status:'Active')
  7.times do
    stylist_id = rand(rand_max)+low_stylist_id
    ShopStylist.create(shop_id:shop_id, stylist_id:stylist_id, start_date:start, status:'Active')
  end

  shop_id = Shop.find_by(name:"Head Boys - Gift Acres").id
  5.times do
    stylist_id = rand(rand_max)+low_stylist_id
    ShopStylist.create(shop_id:shop_id, stylist_id:stylist_id, start_date:start, status:'Active')
  end

  shop_id = Shop.find_by(name:"Head Boys - Atterbury").id
  3.times do
    stylist_id = rand(rand_max)+low_stylist_id
    ShopStylist.create(shop_id:shop_id, stylist_id:stylist_id, start_date:start, status:'Active')
  end

  shop_id = Shop.find_by(name:"Head Boys - Stellenbosch").id
  3.times do
    stylist_id = rand(rand_max)+low_stylist_id
    ShopStylist.create(shop_id:shop_id, stylist_id:stylist_id, start_date:start, status:'Active')
  end

  shop_id = Shop.find_by(name:"Palladium Hair - Pretoria").id
  8.times do
    stylist_id = rand(rand_max)+low_stylist_id
    ShopStylist.create(shop_id:shop_id, stylist_id:stylist_id, start_date:start, status:'Active')
  end

  shop_id = Shop.find_by(name:"Palladium Hair - Cape Town").id
  8.times do
    stylist_id = rand(rand_max)+low_stylist_id
    ShopStylist.create(shop_id:shop_id, stylist_id:stylist_id, start_date:start, status:'Active')
  end

  shop_id = Shop.find_by(name:"The Corner Shop").id
  3.times do
    stylist_id = rand(rand_max)+low_stylist_id
    ShopStylist.create(shop_id:shop_id, stylist_id:stylist_id, start_date:start, status:'Active')
  end

end


# Now generate the shop stylist workdays
#
#create_table "shop_stylist_workdays", force: :cascade do |t|
#  t.integer  "shop_id"
#  t.integer  "stylist_id"
#  t.string   "day"
#  t.time     "start_time"
#  t.time     "end_time"
#  t.boolean  "working"
#  t.date     "effective_date"
#  t.date     "end_date"
#  t.datetime "created_at",     null: false
#  t.datetime "updated_at",     null: false
#  t.index ["shop_id"], name: "index_shop_stylist_workdays_on_shop_id"
#  t.index ["stylist_id"], name: "index_shop_stylist_workdays_on_stylist_id"
#end

if load_shop_stylist_workdays
  ShopStylistWorkday.where(:id => 0..10000).destroy_all
  shop_stylist = ShopStylist.all
  shop_stylist.each do |item|
    workdays = ShopWorkday.where(shop_id: item.shop_id)
    workdays.each do |dag|
      ShopStylistWorkday.create(shop_id:item.shop_id, stylist_id: item.stylist_id, day:dag.day, start_time:dag.start_time, end_time:dag.close_time, working:true, effective_date:Date.parse("2016/10/31"))
    end
  end
end

#
# generate teh shop calendar
#
# We need to generate the default entries for each stylist workday combination
#
#create_table "shop_calendars", force: :cascade do |t|
#  t.integer  "shop_id"
#  t.integer  "stylist_id"
#  t.datetime "slot_start"
#  t.integer  "duration"
#  t.datetime "slot_end"
#  t.boolean  "available"
#  t.datetime "created_at", null: false
#  t.datetime "updated_at", null: false
#  t.index ["shop_id"], name: "index_shop_calendars_on_shop_id"
#  t.index ["stylist_id"], name: "index_shop_calendars_on_stylist_id"
#end
if load_shop_calendars
  ShopCalendar.where(:id => 0..100000).destroy_all
  #
  # We should do a walk through the shops and get their settings
  # then based on teh start_date we must calculate which weekday it is
  # then we should get the Stylist workday parameters and generate the slots
  #
  # the start calculation date for the store is based on the start_date plus the days_ahead, vs what the latest
  # date is in the database already created
  # Because we have just deleted all the old records, there should be nothing in the table
  # we will claculate from today for the days_ahead
  #
  ShopSetting.all.each do |shop|
    # Step through the number of days to generate
    #
    # for i in 0..shop.days_ahead_calender
    day = Date.today -1


    for i in 0..5
      day = day + 1
      weekday = day.strftime("%A")
      # Now process each Shop Stylist
      ShopStylist.where(shop_id:shop.shop_id).find_each do |shop_stylist|
        # We know that we have aligned in teh data generate the start times with the store's workday times
        #
        # Now load the shop workday parameters for the specific day
#        midnight = DateTime.now.at_midnight
#        starttyd = shop.shop.shop_workdays.find_by(day: weekday).start_time.seconds_since_midnight.seconds
#        afskop = midnight + starttyd
#s        einde = afskop + 60.minutes

#        start_time = DateTime.now.at_midnight + shop.shop.shop_workdays.find_by(day: weekday).start_time.seconds_since_midnight.seconds
#        close_time = DateTime.now.at_midnight + shop.shop.shop_workdays.find_by(day: weekday).close_time.seconds_since_midnight.seconds

        start_time = day.at_midnight + shop.shop.shop_workdays.find_by(day: weekday).start_time.seconds_since_midnight.seconds
        close_time = day.at_midnight + shop.shop.shop_workdays.find_by(day: weekday).close_time.seconds_since_midnight.seconds

        while start_time < close_time do
          slot_end = start_time + shop.calender_slot_size.minutes
          ShopCalendar.create(shop_id:shop.shop_id, stylist_id:shop_stylist.stylist_id, slot_start:start_time, duration:shop.calender_slot_size, slot_end:slot_end )
          start_time = slot_end

        end
      end
    end
  end
end
#
# Now create some dummy bookings fro customers and services
#
if load_bookings then
  Booking.where(:id => 0..100000).destroy_all
  CalendarBooking.where(:id => 0.100000).destroy_all

  # setup the default start time from which to index teh start data
  start = DateTime.new(2016,11,02, 7,0)
  shop = Shop.find_by(name:"Head Boys - Brooklyn")
  ShopStylist.where(shop_id:shop.id).find_each do |shopstylist|
    stylist = shopstylist.stylist
 # shop.shop_stylists.all.each do |stylist|

    # we set the initial start time forward by up to 4 half hours
    startTime = start + (rand(4) * 0.5*60).minutes

    # we want to create some entries for today that makes sense
    # we will pick the clients, and then make service bookings for them

    # get the clients
    clients = Client.where(stylist_id: stylist.id)
    puts "************** Client Count " + clients.size.to_s + " Koooooos Stylist Id " + stylist.id.to_s
    clients.each do |client|
      # now select a random client from this array
      # client = clients[rand(clients.size)]

      # new random implementation
      # we check a flag of 0,1,2 and if 0 or 1 ignore the client for this day
      if rand(3) > 1 then
        # Select a random service from the service table
        service = Service.find(1+rand(6))

        # # set a random booking start time by adding a random number of half hours to teh default start time
        # # startTime = start + (rand(20) * 0.5*60).minutes

        # Now create a new booking entry and fill in the fields
        item = stylist.bookings.build(client_id: client.id, service_id: service.id)
        item.date = startTime
        item.status = "new"
        item.save!
        puts "***************** Item was saved"
        #
        # at this time we must tie this to teh right number of slots for the shop and stylist
        #
        end_time = startTime + service.duration.minutes
        #
        # select the Calender entry ids of the matching slots
        start_date = startTime.to_s(:db)
        end_date = end_time.to_s(:db)
        search_str = "shop_id = "
        search_str += shop.id.to_s
        search_str += " AND stylist_id ="
        search_str += stylist.id.to_s
        search_str += " AND slot_start >= Datetime('"
        search_str += start_date
        search_str += "') AND slot_end <= Datetime('"
        search_str += end_date + "')"
        puts "Search String is:" + search_str

        ShopCalendar.where(search_str).find_each do |slot|
          link = item.calendar_bookings.build(shop_calendar_id:slot.id)
          link.save!
        end

        # now move teh startTime further ahead by up to 1 hour
        startTime = startTime + service.duration.minutes + (rand(3) * 0.5*60).minutes

      end
    end

  end




end

#Client.create(firstName: 'Angelique', lastName:'Smith', image_url:'AngeliqueSmith.jpg', sex:'female', stylist_id: 1)
#Client.create(firstName: 'Anna', lastName:'George', image_url:'AnnaGeorge.jpg', sex:'female' , stylist_id: 2)
#Client.create(firstName: 'Bibi', lastName:'Bahrain', image_url:'BibiBahrain.jpg', sex:'female', stylist_id: 3)
#Client.create(firstName: 'Courtney', lastName:'Cooper', image_url:'CourtneyCooper.jpg', sex:'female', stylist_id: 4)
#Client.create(firstName: 'Elle', lastName:'Taylor', image_url:'ElleTaylor.jpg', sex:'female', stylist_id: 5)
#Client.create(firstName: 'Elve', lastName:'Short', image_url:'ElveShort.jpg', sex:'female', stylist_id: 6)
#Client.create(firstName: 'Gita', lastName:'Smothers', image_url:'GitaSmothers.jpg', sex:'female', stylist_id: 7)
#Client.create(firstName: 'Joanne', lastName:'Smolder', image_url:'JoanneSmolder.jpg', sex:'female', stylist_id: 9)
#Client.create(firstName: 'Joanne', lastName:'Styler', image_url:'JoanneStyler.jpg', sex:'female', stylist_id: 1)
#Client.create(firstName: 'Joan', lastName:'Rivera', image_url:'JoanRivera.jpg', sex:'female', stylist_id: 2)
#Client.create(firstName: 'Jo', lastName:'Lo', image_url:'JoLo.jpg', sex:'female', stylist_id: 3)
#Client.create(firstName: 'Me', lastName:'Am', image_url:'MeAm.jpg', sex:'female', stylist_id: 4)
#Client.create(firstName: 'Mi', lastName:'Li', image_url:'MiLi.jpg', sex:'female', stylist_id: 5)
#Client.create(firstName: 'Mina', lastName:'Mika', image_url:'MinaMika.jpg', sex:'female', stylist_id: 6)
#Client.create(firstName: 'Patricia', lastName:'Wild', image_url:'PatriciaWild.jpg', sex:'female', stylist_id: 7)
#Client.create(firstName: 'Prudence', lastName:'Clever', image_url:'PrudenceClever.jpg', sex:'female', stylist_id: 8)
#Client.create(firstName: 'Sarah', lastName:'Fluenta', image_url:'SarahFluenta.jpg', sex:'female', stylist_id: 9)
#Client.create(firstName: 'See', lastName:'Me', image_url:'SeeMe.jpg', sex:'female', stylist_id: 1)
#Client.create(firstName: 'Sigourney', lastName:'Dreams', image_url:'SigourneyDreams.jpg', sex:'female', stylist_id: 1)
#Client.create(firstName: 'Smiley', lastName:'Schoombe', image_url:'SmileySchoombe.jpg', sex:'female', stylist_id: 1)
#Client.create(firstName: 'Snow', lastName:'White', image_url:'SnowWhite.jpg', sex:'female', stylist_id: 1)
#Client.create(firstName: 'Sue', lastName:'Anne', image_url:'SueAnne.jpg', sex:'female', stylist_id: 3)
#Client.create(firstName: 'Sue', lastName:'Style', image_url:'SueStyle.jpg', sex:'female', stylist_id: 4)
#Client.create(firstName: 'Wilson', lastName:'Duns', image_url:'WilsonDuns.jpg', sex:'male', stylist_id: 4)
#Client.create(firstName: 'Wilco', lastName:'Brand', image_url:'WilcoBrand.jpg', sex:'male', stylist_id: 4)
#Client.create(firstName: 'Steve', lastName:'Taylor', image_url:'SteveTaylor.jpg', sex:'male', stylist_id: 1)
#Client.create(firstName: 'Smiley', lastName:'Johnson', image_url:'SmileyJohnson.jpg', sex:'male', stylist_id: 5)
#Client.create(firstName: 'Sanjeev', lastName:'Ghordan', image_url:'SanjeevGhordan.jpg', sex:'male', stylist_id: 5)
#Client.create(firstName: 'Miles', lastName:'Away', image_url:'MilesAway.jpg', sex:'male', stylist_id: 5)
#Client.create(firstName: 'Mi', lastName:'Jong', image_url:'MiJong.jpg', sex:'male', stylist_id: 7)
#Client.create(firstName: 'Lee', lastName:'Caps', image_url:'LeeCaps.jpg', sex:'male', stylist_id: 7)
#Client.create(firstName: 'John', lastName:'Baptist', image_url:'JohnBaptist.jpg', sex:'male', stylist_id: 9)
#Client.create(firstName: 'Jo', lastName:'Hart', image_url:'JoHart.jpg', sex:'male', stylist_id: 9)
#Client.create(firstName: 'Jason', lastName:'Borg', image_url:'JasonBorg.jpg', sex:'male', stylist_id: 9)
#Client.create(firstName: 'Jan', lastName:'Jean', image_url:'JanJean.jpg', sex:'male', stylist_id: 9)
#Client.create(firstName: 'Graig', lastName:'Jones', image_url:'GraigJones.jpg', sex:'male', stylist_id: 9)
#Client.create(firstName: 'Dean', lastName:'Shout', image_url:'DeanShout.jpg', sex:'male', stylist_id: 1)
#Client.create(firstName: 'Dave', lastName:'Becks', image_url:'DaveBecks.jpg', sex:'male', stylist_id: 6)
#Client.create(firstName: 'Col', lastName:'Farrino', image_url:'ColFarrino.jpg', sex:'male', stylist_id: 6)
#Client.create(firstName: 'Brad', lastName:'Coops', image_url:'BradCoops.jpg', sex:'male', stylist_id: 8)
#Client.create(firstName: 'Angelo', lastName:'Pitts', image_url:'AngeloPitts.jpg', sex:'male', stylist_id: 8)

#Service.create(name: 'Style', description: "The styling, cut of a clients har, including a wash", price: 150, duration:60)
#Service.create(name: 'Cut', description: "The styling, cut of a clients har, including a wash", price: 150, duration:60)
#Service.create(name: 'Blowdry', description: "The styling, cut of a clients har, including a wash", price: 150, duration:60)
#Service.create(name: 'Colour', description: "The styling, cut of a clients har, including a wash", price: 150, duration:60)
#Service.create(name: 'Braids', description: "The styling, cut of a clients har, including a wash", price: 150, duration:60)
