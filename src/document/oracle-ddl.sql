-- cmd 
-- sql접속 sqlplus sysdba
-- 아디 system
-- 비번 1234
-- 유저 생성 create user myspace identified by 1234;
-- 권한 부여 grant connect, resource, dba to myspace;
-- 유저 삭제 drop user myspace cascade; (sql 디벨로퍼에서 접속 해제해야합니다.)


--회원
create table member (
    idx number PRIMARY KEY,
    login_id varchar2(20) unique not null,
    password varchar2(200) not null,
    name varchar2(20) not null,
    email varchar2(20) not null,
    phone varchar2(30) not null,
    birth date not null
);

--브랜드
create table brand (
    idx number PRIMARY KEY,
    name varchar2(20) not null,
    phone varchar2(20) not null,
    manager varchar2(20) not null
);

--카테고리
create table category (
    idx number PRIMARY KEY,
    name varchar2(50) not null
);

--상품
create table product (
    idx number PRIMARY KEY,
    category_idx number CONSTRAINT category_idx_product_fk references category(idx),
    brand_idx number constraint brand_idx_product_fk references brand(idx),
    name varchar2(50) not null,
    price number not null,
    image_url varchar2(100),
    image varchar2(200)
);

--배송지
CREATE TABLE delivery (
    idx number PRIMARY KEY,
    member_idx number constraint member_idx_delivery_fk references member(idx),
    address_name varchar2(50) NOT NULL,
    delivery_name varchar2(20) NOT NULL,
    address varchar2(50) NOT NULL,
    delivery_phone varchar2(30) NOT NULL,
    delivery_request varchar2(20)
);

--장바구니
create table cart (
    idx number PRIMARY KEY,
    member_idx number constraint member_idx_cart_fk references member(idx)
);

--장바구니 상품
create table cart_product (
    idx number PRIMARY KEY,
    cart_idx number constraint cart_product_idx_cart_fk references cart(idx),
    product_idx number constraint product_idx_cart_fk references product(idx),
    amount number not null
);

--주문
CREATE TABLE ORDER2 (
    idx number PRIMARY KEY,
    member_idx number constraint member_idx_order_fk references member(idx),
    cart_idx number constraint cart_idx_order_fk references cart(idx),
    delivery_idx number constraint delivery_idx_order_fk references delivery(idx),
    payment varchar2(20) NOT NULL,
    price number NOT NULL,
    delivery_price NUMBER DEFAULT 0,
    regdate date NOT NULL
);

--상품리뷰
create table REVIEW(
    idx number PRIMARY KEY,
    member_idx number constraint member_idx_review_fk references member(idx),
    product_idx number constraint product_idx_review_fk references product(idx),
    order_idx number constraint order_idx_reveiw_fk references ORDER2(idx),
    content varchar2(100) not null,
    image varchar2(200)
);

--리뷰점수
create table score (
    idx number PRIMARY KEY,
    review_idx number constraint review_idx_score_fk references REVIEW(idx),
    durability number not null,
    price number not null,
    design number not null,
    delivery number not null
);


-- 시퀀스 생성
create sequence member_seq start with 1 increment by 1;
create sequence brand_seq start with 1 increment by 1;
create sequence cart_seq start with 1 increment by 1;
create sequence cart_product_seq start with 1 increment by 1;
create sequence category_seq start with 1 increment by 1;
create sequence delivery_seq start with 1 increment by 1;
create sequence order2_seq start with 1 increment by 1;
create sequence product_seq start with 1 increment by 1;
create sequence review_seq start with 1 increment by 1;
create sequence score_seq start with 1 increment by 1;