--Creating the Database
CREATE Database WhatsAppSampleDB;

-- Creating the User table
CREATE TABLE Users (
    UserID int PRIMARY KEY IDENTITY(1,1),
    Name varchar(50) NOT NULL,
    PhoneNumber varchar(20) NOT NULL,
    ProfilePicture varchar(255)
);

-- Inserting sample data into the User table
INSERT INTO Users(Name, PhoneNumber, ProfilePicture)
VALUES
    ('John Doe', '+234 34567090', 'User1_ProfilePicture'),
    ('Jane Smith', '+234 34587891', 'User2_ProfilePicture'),
    ('Jim Smith', '+234 34767892', 'User3_ProfilePicture');

-- Creating the Group table
CREATE TABLE Groups (
    GroupID int PRIMARY KEY IDENTITY(1,1),
    GroupName varchar(50) NOT NULL,
    GroupPicture varchar(255)
);

-- Inserting sample data into the Group table
INSERT INTO Groups(GroupName, GroupPicture)
VALUES
    ('Family Group', 'Group1_ProfilePicture'),
    ('Friends Group', 'Group2_ProfilePicture'),
    ('Work Group', 'Group3_ProfilePicture');

-- Creating the GroupMembers table
CREATE TABLE GroupMembers (
    GroupID int NOT NULL,
    UserID int NOT NULL,
    PRIMARY KEY (GroupID, UserID),
    FOREIGN KEY (GroupID) REFERENCES Groups(GroupID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Inserting sample data into the GroupMembers table
INSERT INTO GroupMembers (GroupID, UserID)
VALUES
    (1, 1), (1, 2), (2, 2), (2, 3), (3, 1), (3, 2);

-- Creating the Chat table
CREATE TABLE Chat (
    ChatID int PRIMARY KEY IDENTITY(1,1),
    SenderID int NOT NULL,
    ReceiverID int NOT NULL,
    GroupID int NULL,
    Message varchar(255) NOT NULL,
    Timestamp datetime NOT NULL,
    FOREIGN KEY (SenderID) REFERENCES Users(UserID),
    FOREIGN KEY (ReceiverID) REFERENCES Users(UserID),
    FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);

-- Inserting sample data into the Chat table
INSERT INTO Chat (SenderID, ReceiverID, GroupID, Message, Timestamp)
VALUES
    (1, 2, NULL, 'Hey, how are you?', '2022-12-01 10:00:00'),
    (2, 1, NULL, 'I am good, how about you?', '2022-12-01 10:20:00');


SELECT *
FROM chat;

