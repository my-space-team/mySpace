--더미데이터
------------------------------------------------------------------------------------------
-- 브랜드 데이터
--alter table brand modify manager varchar(200);
--page : 1
INSERT INTO brand (idx, name, phone, manager)
VALUES (brand_seq.nextval, '두닷', '02-585-8937', '두닷_매니저');

--page : 2
INSERT INTO brand (idx, name, phone, manager)
VALUES (brand_seq.nextval, '라메리트', '031-943-1113', '라메리트_매니저');

--page : 3
INSERT INTO brand (idx, name, phone, manager)
VALUES (brand_seq.nextval, '오투가구', '02-362-3177', '오투가구_매니저');

--page : 4
INSERT INTO brand (idx, name, phone, manager)
VALUES (brand_seq.nextval, '매스티지데코', ' 02-557-2712', '매스티지데코_매니저');

--page : 5
INSERT INTO brand (idx, name, phone, manager)
VALUES (brand_seq.nextval, '찰스퍼니처', '1666-1346', '찰스퍼니처_매니저');


------------------------------------------------------------------------------------------
-- 카테고리 데이터
-- 1
INSERT INTO category VALUES(category_seq.NEXTVAL, '침대');
-- 2
INSERT INTO category VALUES(category_seq.NEXTVAL, '테이블, 식탁, 책상');
-- 3
INSERT INTO category VALUES(category_seq.NEXTVAL, '소파');
-- 4
INSERT INTO category VALUES(category_seq.NEXTVAL, '서랍, 수납장');
-- 5
INSERT INTO category VALUES(category_seq.NEXTVAL, '거실장, TV장');
-- 6
INSERT INTO category VALUES(category_seq.NEXTVAL, '선반'); 
-- 7
INSERT INTO category VALUES(category_seq.NEXTVAL, '의자');
-- 8 
INSERT INTO category VALUES(category_seq.NEXTVAL, '행거, 옷장'); 

------------------------------------------------------------------------------------------
-- 상품 데이터
set define off;
--alter table product modify name varchar(200);
--alter table product modify image_url varchar(200);
--두닷 1번브랜드
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 1, 1, '바일레 에어침대 Q(매트 미포함)',349000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1605146218_104225_1.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 1, 1, '바일레 에어침대_SS(매트 미포함)',299000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1605144032_104218_1.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 1, 1, '바일레 에어침대_SS(매트 포함)',418000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165951165931975294.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 1, 1, '바일레 에어침대_Q(매트 포함)',498000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165951196427806222.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 2, 1, '콰트로 에어 데스크 20size 5colors',125000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157242782195255523.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 2, 1, '콰트로 데스크 시리즈 19size',82000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157242782195255523.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 2, 1, '콰트로 아크 데스크 시리즈 19size',99000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162823052290153070.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 2, 1, '콰트로 에어 반타원 데스크 화이트 책상 테이블8size',149000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/166778758508722593.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 3, 1, '브루노 1/2/3인 소파',450000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1585543409_104074_1.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 3, 1, '바일레 모듈 3인 패브릭 소파(펫소파, 오토만 별도)',550000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1612338547_104289_1.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 4, 1, '[쿠폰]콰트로 3단 책상 서랍장 7colors',119000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1604898448_104156_1.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 4, 1, '[쿠폰]콰트로 3단 큰 책상 서랍장',129000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162209295854720469.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 4, 1, '[쿠폰]콰트로 4단 책상 서랍장 7colors',119000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1604899384_104157_1.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 4, 1, '[쿠폰]콰트로 4단 큰 책상 서랍장',139000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165233242593408399.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 5, 1, '[쿠폰]브룬 1600/2100 거실장',139000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163469471368737835.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 5, 1, '[쿠폰]바일레 1800 높은 수납거실장_에어화이트',324000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162486729381542026.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 5, 1, '[쿠폰]바일레 1800 수납거실장_에어화이트',289000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162486723928571732.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 5, 1, '[쿠폰]바일레 900 높은 수납거실장_에어화이트',189000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162486712379192144.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 6, 1, '[쿠폰]브룬 2단 선반장 (3색상)',139000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162545306538057609.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 6, 1, '[쿠폰]밀라노 벽선반(2개세트)',29000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1604997526_101794_1.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 6, 1, '[쿠폰]우디 600 ㄱ자선반',21800, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1604906654_101848_1.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 6, 1, '[쿠폰]우디 440 ㄱ자선반',17900, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1604906564_101847_1.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 7, 1, '[쿠폰]루키 에어 오피스 체어 3colors',149000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162562591012767117.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 7, 1, '디자인 오피스체어 12종 택1',149000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/165544285688274634.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 7, 1, '[쿠폰]일로 체어',55000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1610520400_103726_1.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 7, 1, '[쿠폰]일로 크롬 오피스 체어',75000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164740678282509634.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 8, 1, '[쿠폰]바일레 1200 수납행거',239000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163765237941904677.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 8, 1, '[쿠폰]바일레 800 수납행거',199000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163765233012380649.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 8, 1, '바일레 철제 드레스룸 옷장/행거/서랍장 모음',329000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163756818735643674.jpg?gif=1&w=640&h=640&c=c&webp=1');

--라메리트 2번 브랜드
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 1, 2, '마니에르 원목 호텔침대 호텔식 LED 조명 침대프레임 SS/Q&K/LK',549000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165527820306285733.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 1, 2, '디어문 호텔 침대 프레임 조명협탁 SS/Q&K/LK',599000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162684951058399126.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 1, 2, '딜라이트 호텔 침대 수납형 프레임 신혼침대 SS/Q&K/LK',570000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162684978403305637.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 2, 2, '아이나라인 2인용 책상',750000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1491890248320_c5FwaE1KAL.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 2, 2, '나노클린 페닉스 원형테이블 2type 3colors',805500, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/158036697906262770.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 2, 2, '나노클린 페닉스 1800 타원형 식탁테이블 3colors',1215000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/158087839232646830.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 2, 2, '나노클린 페닉스 직사각 식탁 테이블 3type 3colors',918000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/158088243543040438.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 3, 2, '르모어 4인 소파 패브릭 CA332',3501000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162746368951366491.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 3, 2, '르모어 모듈 A3',972000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162131213300262158.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 3, 2, '르모어 모듈 A3 카우치',1224000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162131168328444889.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 3, 2, '[리퍼] 기능성 패브릭 4/6인 소파 모음전',1620000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/165700217953235380.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 4, 2, '아이나라인 사이드보드 1800',990000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1491887813049_yBK0fEo.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 4, 2, '몰튼(Molten) 협탁',520000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156316759542114441.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 4, 2, '딘 월넛 원목 협탁',875000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162605489841960638.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 4, 2, '딘 월넛 원목 낮은 수납장',1050000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162605507763761713.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 5, 2, '디어문 화이트거실장 템바보드 거실장 2000 TV거실장 높은거실장',359000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163246745401833084.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 5, 2, '베루스 원목 템바보드 거실장 2100 TV거실장 티비다이 3colors',459000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165577624093689722.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 5, 2, '베루스 원목 템바보드 거실장 1200 TV거실장 티비다이 3colors',339000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165588543517576751.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 5, 2, '아이나 거실장',670000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1491874879575_ekejO9ww8.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 6, 2, '아이나라인 5단 수납형 선반',850000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1491890659021_ADeD.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 6, 2, '아이나라인 5단 선반',690000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1491890465406_ix2O8J.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 7, 2, '주드 노바벅 기능성 패브릭 원목 의자',200000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162606585866382864.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 7, 2, '[리퍼] 나노클린 페닉스 벤치 1200',355000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165605777518849208.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 7, 2, '몰튼 노바벅 기능성 패브릭 오크 의자 A',270000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162754817141912243.jpg?gif=1&w=640&h=640&c=c&webp=1');
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 7, 2, '나노 페닉스 벤치 1000,1200,1400',470000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162606868047144646.jpg?gif=1&w=640&h=640&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url)
VALUES ( product_seq.nextval, 8, 2, '아이나 옷장/드레스룸',1277000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1491377658968_JlIpgJxDRk.jpg?gif=1&w=640&h=640&c=c&webp=1');


-- 오투가구 3번 브랜드 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 3, '오투가구 피카, 세토 빈티지 원목침대 모음전 SS/Q', 889000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/166674739199614522.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 3, '피카 Q 침대2', 880000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1596093977_100292_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 3, '피카 SS 침대', 769000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1596093981_100293_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 3, '스카겐 Q 침대(매트리스 제외)', 479000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1490754868_100093_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 3, '모이 원목 퀸침대(내추럴브라운)', 699000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1527750377_100155_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 3, '피카 확장형 4인 테이블', 414000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165657253613333498.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 3, '스카겐 데스크', 309000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1490754782_100084_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 3, '세토 소파 테이블', 195000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163366697687087005.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 3, '피카 반타원 2인 테이블', 399000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1611704886_100343_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 3, '피카 원형 테이블', 302000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1560823798_100240_1.jpg?gif=1&w=850&h=850&c=c&webp=1');
 
INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 3, '피카 수납형 벤치', 249000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1490248639_100001_1.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 3, '모데라토 3인 카우치소파(카멜)', 1069000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1540277965_100202_1.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 3, '라운더리 1인 코너(그레이)', 432000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160496643206923846.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 3, '플랫 3인 소파 트레이 A 세트(플럼베이지)', 840000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/openapi/797911/1652423847649.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 3, '발롱 1인 소파 머스터드옐로', 319000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1531191389_100190_1.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 3, '세토 3단 와이드 수납장', 495000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163754535678747453.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 3, '세토 8칸 서랍장', 511000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163754539420973040.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 3, '스카겐 북케이스', 109000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159652227417328891.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 3, '세토 사이드 보드', 485000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/openapi/797911/1653970786539.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 3, '세토 다이닝 수납장 S', 587000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165665487562488758.jpg?gif=1&w=850&h=850&c=c&webp=1'); 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 3, '피카 AV 와이드 장식장', 545000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1490248712_100029_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 3, '모이 AV장식장 다크브라운', 246000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1499821952_100133_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 3, '스카겐 컴팩트 AV장식장', 289000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1490754883_100066_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 3, '보에트 AV 와이드 장식장', 569000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1610006008_100331_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 3, '피카 스툴', 79000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1490248699_100034_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 3, '마인 라운드 체어(네이비)', 189000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159902770254755011.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 3, '피카 노르딕 체어', 175000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1560823760_100234_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 3, '노르웨지안 체어', 89000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1490765708_100122_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 3, '마인 미니 코트랙(월넛)', 44000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163296285091950394.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 3, '마인 코트랙 행거(월넛)', 258000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163296284705992769.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 3, '마인 수납형 행거(월넛)', 348000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163296284293463800.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 3, '마인 수납형 행거', 85000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159902902766903149.jpg?gif=1&w=850&h=850&c=c&webp=1');

-- 매스티지데코 4번 브랜드 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 4, '뉴레트로 슈퍼싱글 침대', 450000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1552462469_101121_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 4, '뉴레트로 퀸 침대', 600100, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1552462464_101122_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 4, '루아드 킹 침대', 907000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162216616581517172.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 4, '파티나 슈퍼 킹 침대', 905000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1597822139_101966_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 4, 'RV 침대(Q)', 699000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1486605145_100442_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 4, '파티나 뷰로 수납 데스크', 465000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1557304142619_TI453gP.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 4, '루아드 사이드 테이블', 122000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1565250039_101738_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 4, '루아드 데스크', 254000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1578286630_101841_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 4, '루아드 다이닝 테이블 2인', 349000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163419183030030471.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 4, '빈스 1인 소파(베이지)', 465000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1608603625_102030_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 4, '모나 카우치 소파(딥그린)', 1050000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1606193942_102011_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 4, '체스터필드 3인 소파(에어레더 베이지)', 1380000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1555673851_101708_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 4, '마이 시그니처 파리지엔느 1인 소파(화이트크림)', 450000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1552446215_100676_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 4, '루아드 북 캐비닛', 399000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165700843977963157.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 4, '파티나 6칸 와이드 서랍장', 456000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1557304652493_1gRGMzni0.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 4, '파티나 플러스 캐비닛', 195000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165699592356877589.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 4, '노바레트로 미니 북쉘프', 224000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163756660404719849.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 4, '파티나 AV 장식장 1800', 451000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1557304258238_oO7GY4jK.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 4, '하임 AV 캐비닛 1800', 485000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1568954330_101781_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 4, '루아드 와이드 장식장', 346000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162381810933865059.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 4, '노바레트로 확장형 사이드보드', 399000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/openapi/710877/1677459313756.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 6, 4, '파티나 4단 쉘프', 287000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1590035621_101916_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 4, '파티나 스툴', 127000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1557305172605_4YZJO.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 4, '봄맞이 화이트+우드 인테리어 가구 모음전', 118000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/167773361855507036.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 4, '엘로이 골드 체어(벨벳 핑크)', 60000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1555674051_101719_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 4, '루아드 행거 수납장', 450000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162216618911845672.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 4, 'RV 옷장B', 835000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads%2Fproductions%2F1486604922_100453_1.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 4, '모건 옷장 B', 100000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1616563853_100170_1.jpg?gif=1&w=850&h=850&c=c&webp=1');


-- 찰스퍼니처 5번 브랜드 

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 5, '쿠르보 침대 02', 1890000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163773416523193194.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 5, '비엔토 침대 01', 765000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165569205151214962.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 5, '비엔토 침대 02', 765000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165569207153689097.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 5, '쿠르보 침대 01', 2340000 , 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163773876014938861.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 1, 5, '하나시 침대 02', 2160000 , 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163764432397307365.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 5, '쿠르보 테이블 07 (타원형)', 1800000 , 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164393265025235969.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 5, '쿠르보 소파테이블 01', 990000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164393274266879106.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 5, '쿠르보 테이블 06 (세라믹)', 2340000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163764345586514615.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 5, '쿠르보 소파테이블 03', 900000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163773828423091352.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 2, 5, '쿠르보 책상 02', 1980000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164723258468402402.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 5, '하나시 소파 02 (3인)', 3150000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163834951802650591.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 5, '반다 데이베드소파 01', 1080000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163575103675305908.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 5, '하나시 소파 03 (1인)', 1530000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163834946351765661.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 3, 5, '누베스 소파 03 (1인)', 1170000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163877972718076219.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 5, '비엔토 협탁 03', 243000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167513373585786841.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 5, '팔레트 수납장 02', 1890000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163762776819107973.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 4, 5, '팔레트 협탁 01', 900000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163763241438424047.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 5, '비엔토 사이드보드 01', 1170000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167513296568363563.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 5, '팔레트 사이드보드 01', 1980000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163763189606978102.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 5, '[리퍼] 비엔토 사이드보드 01', 845000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165275422265199613.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 5, 5, '[리퍼] 반다 거실장 01', 747500, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164932149662412061.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 6, 5, '원형 선반 01 (원목)', 180000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167593050188311842.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 6, 5, '원형 선반 02 (케인)', 225000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167593067057414547.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 5, '쿠르보 의자 02', 408500, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163773255564824514.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 5, '비엔토 스툴 01', 153000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167513284949189284.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 5, '쿠르보 의자 05', 380000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163771951638021671.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 7, 5, '[리퍼] 하나시 의자 08', 247000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163853827899764410.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 5, '팔레트 옷장 02', 1710000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163763304639233701.jpg?gif=1&w=850&h=850&c=c&webp=1');

INSERT INTO product (idx, category_idx, brand_idx, name, price, image_url) 
	VALUES ( product_seq.nextval, 8, 5, '팔레트 옷장 01', 2340000, 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163763293333359177.jpg?gif=1&w=850&h=850&c=c&webp=1');

commit;

------------------------------------------------------------------------------------------

-- -- 배송지 데이터
-- INSERT INTO delivery (idx, member_idx, address_name, delivery_name, address, delivery_phone, delivery_request)
-- VALUES (delivery_seq.nextval, 1, 'Home', 'John Doe', '123 Main St', '123-456-7890', 'Leave package at front door');

-- INSERT INTO delivery (idx, member_idx, address_name, delivery_name, address, delivery_phone, delivery_request)
-- VALUES (delivery_seq.nextval, 2, 'Office', 'Jane Doe', '456 Office Ave', '987-654-3210', 'Call when arriving');

-- -- 장바구니 데이터
-- INSERT INTO cart (idx, member_idx)
-- VALUES (cart_seq.nextval, 1);

-- INSERT INTO cart (idx, member_idx)
-- VALUES (cart_seq.nextval, 2);

-- -- 장바구니 상품 데이터
-- INSERT INTO cart_product (idx, cart_idx, product_idx, amount)
-- VALUES (cart_product_seq.nextval, 1, 1, 1);

-- INSERT INTO cart_product (idx, cart_idx, product_idx, amount)
-- VALUES (cart_product_seq.nextval, 2, 2, 2);

-- -- 주문 데이터
-- INSERT INTO ORDER2 (idx, member_idx, cart_idx, delivery_idx, payment, price, delivery_price, regdate)
-- VALUES (order2_seq.nextval, 1, 1, 1, 'Credit Card', 120, 5, SYSDATE);
-- INSERT INTO order2 VALUES(order2_seq.nextval, 1, 1, 1, '신용카드', 50000, 2500, to_date('2022-02-14', 'YYYY-MM-DD'));
-- INSERT INTO order2 VALUES(order2_seq.nextval, 1, 2, 2, '계좌이체', 20000, 0, to_date('2022-03-01', 'YYYY-MM-DD'));
-- INSERT INTO order2 VALUES(order2_seq.nextval, 2, 3, 3, '페이팔', 150000, 0, to_date('2022-03-08', 'YYYY-MM-DD'));

-- -- 상품리뷰 데이터
-- INSERT INTO review VALUES(review_seq.nextval, 1, 1, 1, '제품이 생각보다 훨씬 좋았습니다', null);
-- INSERT INTO review VALUES(review_seq.nextval, 2, 3, 2, '가격대비 성능이 좋은 제품이네요.', null);
-- INSERT INTO review VALUES(review_seq.nextval, 1, 2, 3, '배송이 빠르고 제품도 만족합니다.', null);

-- -- 리뷰점수 데이터
-- INSERT INTO score VALUES(score_seq.nextval, 1, 4, 5, 5, 4);
-- INSERT INTO score VALUES(score_seq.nextval, 2, 3, 4, 3, 5);
-- INSERT INTO score VALUES(score_seq.nextval, 3, 5, 4, 4, 5);

