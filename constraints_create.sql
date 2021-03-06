create table Item (
    id text not null,
    name text not null,
    buyPrice real,
    firstPrice real not null,
    started date not null,
    ends date not null,
    sellerId text not null,
    description text not null,
    primary key (id),
    foreign key (sellerId) references AuctionUser (id)
    );

create table ItemCategory (
    itemId text not null,
    category text not null,
    primary key (itemId, category),
    foreign key (itemId) references Item (id)
    );

create table AuctionUser (
    id text not null,
    isSeller boolean not null,
    isBidder boolean not null,
    rating integer not null,
    location text,
    country text,
    primary key (id)
    );

create table Bid (
    itemId text not null,
    bidderId text not null,
    bidTime date not null,
    price real not null,
    primary key (itemId, bidTime),
    foreign key (itemId) references Item (id),
    foreign key (bidderId) references AuctionUser (id)
    );

