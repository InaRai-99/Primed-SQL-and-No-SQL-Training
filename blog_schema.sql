-- POST table and Comments
create table Posts (
    PostID INT PRIMARY KEY,
    Title varchar(400) NOT NULL,
    Content TEXT NOT NULL,
    PublishDate Date NOT NULL
);
create table Comment (
    CommentID INT Primary Key,
    PostID Int NOT NULL,
    Author varchar (200),
    CommentText varchar(500) NOT NULL,
    CONSTRAINT fk_post Foreign Key (PostID)
    References Posts(PostID)
)