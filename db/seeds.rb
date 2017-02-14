# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create( email: 'supermyeonga@email.com', password: '12345678',name:'이명아', phone:'01044424338')

Csort.create(name: '병원')
Csort.create(name: '음식점')
Csort.create(name: '미용실')
Csort.create(name: '은행')

Company.create( name: "익산FM치과의원", c_postcode: '54638', c_address: '전라북도 익산시 동서로51길 79', c_daddress: '2층', tel: '063-834-2828', opentime: '09:00am', closetime: '6:30pm' ,csort_id: '1' ,runtime: "1200",com_lat:"35.958268", com_lng:"126.978492")

Company.create( name: "익산세종안과의원", c_postcode: '54638', c_address: '전라북도 익산시 무왕로 1082', c_daddress: '3층', tel: '063-832-1001', opentime: '08:30am', closetime: '7:00pm' ,csort_id: '1',runtime:"1200", com_lat:"35.958249", com_lng:"126.977070")

Company.create( name: "원광대학교병원", c_postcode: '54538', c_address: '전라북도 익산시 무왕로 895 원광대학병원', c_daddress: '', tel: '1577-3773', opentime: '09:00am', closetime: '5:00pm' ,csort_id: '1',runtime:"1800", com_lat:"35.964336", com_lng:"126.959708")



Company.create( name: "돈젠", c_postcode: '54645', c_address: '전라북도 익산시 익산대로70길 44', c_daddress: '', tel: '063-851-5858', opentime: '11:00am', closetime: '9:30pm' ,csort_id: '2', runtime:"3600", com_lat:"35.962747",com_lng:"126.957847")

Company.create( name: "익산보쌈식족발", c_postcode: '54624', c_address: '전라북도 익산시 고봉로 165', c_daddress: '', tel: '063-854-8245', opentime: '5:00pm', closetime: '12:00am' ,csort_id: '2' ,runtime:"3600", com_lat:"35.947268", com_lng:"126.966520")

Company.create( name: "익산애슐리 익산홈플러스점", c_postcode: '54545', c_address: '전라북도 익산시 무왕로 1035 홈플러스', c_daddress: '', tel: '063-918-2023', opentime: '11:00am', closetime: '10:00pm' ,csort_id: '2',runtime:"1800", com_lat:"35.958941", com_lng:"126.972488")
