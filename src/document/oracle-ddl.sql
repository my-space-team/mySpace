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
    price number not null
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
    member_idx number constraint member_idx_cart_fk references member(idx),
);

create table cart_product (
    idx number PRIMARY KEY,
    product_idx number constraint product_idx_cart_fk references product(idx),
    amount number not null
);

--주문
CREATE TABLE order (
    idx number PRIMARY KEY,
    member_idx number constraint member_idx_order_fk references member(idx),
    cart_idx number constraint cart_idx_order_fk references cart(idx),
    delivery_idx number constraint delivery_idx_order_fk references delivery(idx),
    payment varchar2(20) NOT NULL,
    price number NOT NULL,
    delivery_price NUMBER DEFAULT 0,
    state date NOT NULL
);

--상품리뷰
create table review (
    idx number PRIMARY KEY,
    member_idx number constraint member_idx_review_fk references member(idx),
    product_idx number constraint product_idx_review_fk references product(idx),
    order_idx number constraint order_idx_reveiw_fk references order(idx),
    content varchar2(100) not null
);

--리뷰점수
create table score (
    idx number PRIMARY KEY,
    review_idx number constraint review_idx_score_fk references review(idx),
    durability number not null,
    price number not null,
    design number not null,
    delivery number not null
);