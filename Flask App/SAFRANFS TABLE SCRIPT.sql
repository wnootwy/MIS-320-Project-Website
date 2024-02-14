-- Employee Table
DROP TABLE IF EXISTS DEPARTMENT;
DROP TABLE IF EXISTS COMPUTERS;
DROP TABLE IF EXISTS EMPLOYEE;
CREATE TABLE EMPLOYEE (
    EmployeeID INT NOT NULL PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Telephone_No VARCHAR(20) NOT NULL,
    JobTitle VARCHAR(50) NOT NULL,
    DirectSupervisor VARCHAR(50) NOT NULL,
    ComputerSerial_No VARCHAR(50),
    DepartmentID INT
);

INSERT INTO EMPLOYEE VALUES
(1, 'John Doe', '1234567890', 'Engineer', 'Jane Smith', 'A123456', 100),
(2, 'Jane Smith', '0987654321', 'Manager', 'N/A', 'A123457', 200),
(3, 'Alice Brown', '1122334455', 'Designer', 'Jane Smith', 'A123458', 300),
(4, 'Bob White', '2233445566', 'Developer', 'John Doe', 'A123459', 100),
(5, 'Charlie Green', '3344556677', 'Tester', 'John Doe', 'A123460', 900),
(6, 'David Blue', '4455667788', 'Analyst', 'Jane Smith', 'A123461', 300),
(7, 'Ella Purple', '5566778899', 'HR', 'N/A', 'A123462', 100),
(8, 'Frank Yellow', '6677889900', 'Admin', 'Ella Purple', 'A123463', 200);

-- Computers Table
DROP TABLE IF EXISTS COMPUTERS;
CREATE TABLE COMPUTERS (
    ComputerSerial_No CHAR(7) NOT NULL PRIMARY KEY,
    ComputerName VARCHAR(20) NOT NULL,
    DeploymentDate DATE,
    Warranty VARCHAR(255),
    ServiceRecords VARCHAR(255),
    EmployeeID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

INSERT INTO COMPUTERS VALUES
('A123456', 'Comp1', '2022-01-01', '2 Years', 'Cleaned', 1),
('A123457', 'Comp2', '2022-01-05', '2 Years', 'Repaired', 2),
('A123458', 'Comp3', '2022-02-01', '1 Year', 'Replaced', 3),
('A123459', 'Comp4', '2022-03-01', '2 Years', 'Cleaned', 4),
('A123460', 'Comp5', '2022-03-05', '1 Year', 'Repaired', 5),
('A123461', 'Comp6', '2022-04-01', '1 Year', 'Replaced', 6),
('A123462', 'Comp7', '2022-05-01', '2 Years', 'Cleaned', 7),
('A123463', 'Comp8', '2022-06-01', '1 Year', 'Replaced', 8);

-- Services Table
DROP TABLE IF EXISTS SERVICES;
CREATE TABLE SERVICES (
    RequestNumber INT NOT NULL PRIMARY KEY,
    Description VARCHAR(255) NOT NULL,
    AssignedStaff VARCHAR(50),
    Category VARCHAR(50),
    Status VARCHAR(50),
    DateCreated DATE
);

INSERT INTO SERVICES VALUES
(19118, 'Internet Trouble', 'Shawn Miller', 'Networking', 'In Progress', '2023-10-05'),
(19119, 'Resume', 'Janette Smith', 'Recruiting', 'Awaiting', '2023-10-05'),
(19120, 'Sign Contract', 'Wesley Brown', 'Contracts', 'Open', '2023-10-07'),
(19121, 'Enterprise Application Req.', 'Emily Jackson', 'Software Engineering', 'In Progress', '2023-10-07');

-- Software Table
DROP TABLE IF EXISTS SOFTWARE;
CREATE TABLE SOFTWARE (
    SoftwareName VARCHAR(50) NOT NULL PRIMARY KEY,
    ServiceID INT NOT NULL,
    Version VARCHAR(25),
    Publisher VARCHAR(50),
    Licenses INT,
    InstallDate DATE
);

INSERT INTO SOFTWARE VALUES
('Webex', 19092, '42.7.0.29904', 'Cisco Systems, Inc', 150, '2023-10-08'),
('Microsoft Edge', 19101, '117.0.2045.47', 'Microsoft Corporation', NULL, '2023-10-01'),
('Python', 19100, '3.11.0', 'Python Software Foundation', NULL, '2023-08-25'),
('Microsoft 365', 19110, '16.0.1402.20023', 'Microsoft Corporation', 500, '2023-10-01');

-- Department Table
DROP TABLE IF EXISTS DEPARTMENT;
CREATE TABLE DEPARTMENT (
    DepartmentName VARCHAR(50) NOT NULL,
    DepartmentNumber INT NOT NULL PRIMARY KEY,
    DepartmentLocation VARCHAR(50),
    DepartmentManager INT NOT NULL,
    DepartmentSize INT,
    FOREIGN KEY (DepartmentManager) REFERENCES Employee(EmployeeID)
);

INSERT INTO DEPARTMENT VALUES
('Information Technology', 100, 'Bldg1-101,103', '1', 24),
('Human Resources', 200, 'Bldg2-201', '2', 15),
('Contracting', 300, 'Bldg2-301', '3', 19),
('Administration', 900, 'Bldg2-901', '4', 19);

-- Vendors Table
DROP TABLE IF EXISTS VENDOR;
CREATE TABLE VENDOR (
    VendorID INT NOT NULL PRIMARY KEY,
    VendorName VARCHAR(50) NOT NULL,
    VendorProductsServices VARCHAR(255),
    VendorTelephoneNo VARCHAR(15),
    VendorRepresentative VARCHAR(50),
    VendorStanding VARCHAR(50)
);

INSERT INTO VENDOR VALUES
(020, 'Nvidia', 'GPUs', '(800)-555-2255', 'Fredrick Douglas', 'Excellent'),
(030, 'Advanced Micro Devices', 'Processors', '(800)-333-4444', 'Craig Kennedy', 'Good'),
(040, 'Dell', 'Workstations', '(800)-222-3331', 'Mark Cumber', 'Poor'),
(050, 'Cisco Systems', 'Phones', '(800)-777-7777', 'Doug Dimadome', 'Excellent');

ALTER TABLE EMPLOYEE
ADD CONSTRAINT FOREIGN KEY (DepartmentID) REFERENCES DEPARTMENT(DepartmentNumber);


