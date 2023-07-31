-- Corrected UserProjects Table
CREATE TABLE UserProjects (
                              UserProjectID INT PRIMARY KEY,
                              UserID NVARCHAR(200) NOT NULL,
                              ProjectID NVARCHAR(200) NOT NULL,
                              CONSTRAINT FK_UserProjects_User FOREIGN KEY (UserID) REFERENCES Users (UserID),
                              CONSTRAINT FK_UserProjects_Project FOREIGN KEY (ProjectID) REFERENCES Projects (ProjectID),
                              CONSTRAINT UQ_UserProjects_User UNIQUE (UserID)
);

