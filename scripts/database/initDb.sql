create table article(
    article_id int primary key generated BY DEFAULT AS IDENTITY,
    title varchar(100),
    text varchar,
    current_likes int check ( current_likes >= 0 ),
    comments_count int check ( comments_count >= 0 )
);
create table comment(
    comment_id int primary key generated by default as IDENTITY,
    author varchar,
    text varchar,
    article_id int references article(article_id) on delete CASCADE
);