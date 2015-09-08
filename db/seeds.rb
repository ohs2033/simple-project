#article seed set 2
post_seed1 = Post.new



post_seed1.name = "버스커헤어"
post_seed1.img1 = "/img/product1.jpg"
post_seed1.img2 = "/img/product1_2.jpg"
post_seed1.address = "성북구 안암동 버스커헤어"
post_seed1.phone= "02-000-0000"
post_seed1.price = "남성 컷 13,000원 여성 컷 15,000원 예약시 10% 할인"

post_seed1.save


post_seed2 = Post.new

post_seed2.name = "고파슈헤어"
post_seed2.img1 = "/img/product1.jpg"
post_seed2.img2 = "/img/product1_2.jpg"
post_seed2.address = "성북구 안암동 고파고파고파슈"
post_seed2.phone= "02-20-0000"
post_seed2.price = "남성 컷 10,000원 여성 컷 10,000원 현금결제시 10% 할인"

post_seed2.save

user_seed1 = User.new

user_seed1.email = "ohs2033@korea.ac.kr"
user_seed1.encrypted_password = "12341234"
user_seed1.save


