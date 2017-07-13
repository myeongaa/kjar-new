# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create( email: 'supermyeonga@email.com', password: '12345678',name:'이명아', phone:'01044424338')

Csort.create(name: '분식')
Csort.create(name: '야식')
Csort.create(name: '중식')
Csort.create(name: '한식')

Company.create( name: "신포우리만두 원대점", c_postcode: '54645', c_address: '전북 익산시 무왕로 878-8', c_daddress: ' ', tel: '063-857-6334', opentime: '09:00am', closetime: '9:00pm' ,csort_id: '1' ,runtime: "1200",com_lat:"35.964339", com_lng:"126.955878")

Company.create( name: "동대문엽기떡볶이 원광대점", c_postcode: '54646', c_address: '전북 익산시 익산대로68길 51', c_daddress: ' ', tel: '063-854-8591', opentime: '11:30am', closetime: '11:30pm' ,csort_id: '1' ,runtime: "1200",com_lat:"35.961938", com_lng:"126.959050")

Company.create( name: "이삭토스트 원광대점", c_postcode: '54645', c_address: '전북 익산시 무왕로4길 7', c_daddress: ' ', tel: '063-854-0920', opentime: '10:00am', closetime: '9:30pm' ,csort_id: '1' ,runtime: "1200",com_lat:"35.963641", com_lng:"126.957455")

Company.create( name: "신전떡볶이 익산원광대점", c_postcode: '54646', c_address: '전북 익산시 동서로19길 92', c_daddress: ' ', tel: '063-851-1333', opentime: '11:00am', closetime: '10:00pm' ,csort_id: '1' ,runtime: "1200",com_lat:"35.962333", com_lng:"126.958368")

Company.create( name: "두끼떡볶이 익산영등점", c_postcode: '54545', c_address: '전북 익산시 고봉로32길 22', c_daddress: '2층', tel: '063-833-2771', opentime: '11:00am', closetime: '9:30pm' ,csort_id: '1' ,runtime: "1200",com_lat:"35.959432", com_lng:"126.973446")



Company.create( name: "교촌치킨 원광대점", c_postcode: '54646', c_address: '전북 익산시 익산대로68길 51', c_daddress: '', tel: '063-857-1991', opentime: '12:00pm', closetime: '1:30am' ,csort_id: '2' ,runtime: "1200",com_lat:"35.961946", com_lng:"126.959061")

Company.create( name: "모쿠모쿠원광대직영점", c_postcode: '54646', c_address: '전북 익산시 익산대로68길 51', c_daddress: '', tel: '063-862-0045', opentime: '04:00pm', closetime: '2:00am' ,csort_id: '2' ,runtime: "1200",com_lat:"35.961946", com_lng:"126.959061")

Company.create( name: "호호탕수육&치킨", c_postcode: '54645', c_address: '전북 익산시 익산대로68길 31', c_daddress: '', tel: '063-832-4444', opentime: '11:00am', closetime: '2:30am' ,csort_id: '2' ,runtime: "1200",com_lat:"35.962369", com_lng:"126.957123")

Company.create( name: "익산보쌈식족발", c_postcode: '54624', c_address: '전북 익산시 고봉로 165', c_daddress: '', tel: '063-854-8245', opentime: '5:00pm', closetime: '12:00am' ,csort_id: '2' ,runtime: "1200",com_lat:"35.9472647", com_lng:"126.9665480999")

Company.create( name: "중국성", c_postcode: '54645', c_address: '전북 익산시 무왕로 870-1', c_daddress: '', tel: '050-7982-5712', opentime: '10:30am', closetime: '20:30pm' ,csort_id: '3' ,runtime: "1200",com_lat:"35.964388", com_lng:"126.955349")

Company.create( name: "양자강", c_postcode: '54646', c_address: '전북 익산시 동서로21길 79', c_daddress: '', tel: '063-855-7759', opentime: '09:00am', closetime: ' 21:00pm' ,csort_id: '3' ,runtime: "1200",com_lat:"35.960811", com_lng:"126.959232")

Company.create( name: "교동짬뽕", c_postcode: '54635', c_address: '전북 익산시 인북로66길 43', c_daddress: '', tel: '063-842-9789', opentime: '11:00am', closetime: '20:00pm' ,csort_id: '3' ,runtime: "1200",com_lat:"35.959737", com_lng:"126.966649")

Company.create( name: "학림반점", c_postcode: '54535', c_address: '전라북도 익산시 익산대로 453-1', c_daddress: '', tel: '063-855-5982', opentime: '10:30am', closetime: '20:30pm' ,csort_id: '3' ,runtime: "1200",com_lat:"35.966281", com_lng:"126.952770")

Company.create( name: "이비가짬뽕 익산모현점", c_postcode: '54653', c_address: '전북 익산시 선화로1길 109-20', c_daddress: '', tel: '063-855-1222', opentime: '11:00am', closetime: '22:00pm' ,csort_id: '3' ,runtime: "1200",com_lat:"35.957779", com_lng:"126.9427032999")



Company.create( name: "옛골", c_postcode: '54655', c_address: '전북 익산시 동서로8길 8', c_daddress: '', tel: '063-854-6030', opentime: '05:00am', closetime: '22:00pm' ,csort_id: '3' ,runtime: "1200",com_lat:"35.954842", com_lng:"126.947501")

Company.create( name: "풍년식당", c_postcode: '54645', c_address: '전북 익산시 익산대로70길 23', c_daddress: '', tel: '063-837-0050', opentime: '11:30am', closetime: '21:00pm' ,csort_id: '3' ,runtime: "1200",com_lat:"35.963814", com_lng:"126.955767299")

Company.create( name: "함박집", c_postcode: '54646', c_address: '전북 익산시 동서로13길 24', c_daddress: '', tel: '063-857-6200', opentime: '00:00am', closetime: '23:00pm' ,csort_id: '3' ,runtime: "1200",com_lat:"35.96149279999", com_lng:"126.95921339")
