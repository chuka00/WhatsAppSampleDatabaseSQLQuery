# WhatsApp Sample Database
This repository contains SQL scripts to create and populate sample tables for a modern WhatsApp database.

## Table of Contents

### ChatHistoryView
- ChatHistoryView: The ChatHistoryView displays the sender name, receiver name, messages sent between them, and their time stamps.
It is created by joining the User, Chat, and Group tables and aggregating the data in a single view for easy querying.

### Tables
- User Table
- Chat Table
- Group Table
- Group Members Table

1 User Table
The User table stores information about each user in the WhatsApp system, such as their name and unique identifier.

2 Chat Table
The Chat table stores information about the messages sent between users in the WhatsApp system, including the sender and receiver's identifier, the message text, and the time stamp.

3 Group Table
The Group table stores information about the groups created in the WhatsApp system, including the group name and unique identifier.

4 Group Members Table
The Group Members table stores information about the members of each group, including the user identifier and the group identifier.

## Running the Scripts
The scripts can be run using a SQL management tool, such as SQL Server Management Studio (SSMS).
Simply run each script in the order they are presented to create and populate the tables and views.
