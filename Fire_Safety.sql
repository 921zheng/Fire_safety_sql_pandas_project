-- Table to store information about building construction
CREATE TABLE BuildingConstruction (
    BuildingID INT PRIMARY KEY,
    ConstructionType VARCHAR(100),
    OccupancyType VARCHAR(100),
    MaximumOccupancy INT,
    YearBuilt INT
);

-- Table to store information about fire protection systems
CREATE TABLE FireProtectionSystems (
    SystemID INT PRIMARY KEY,
    SystemType VARCHAR(100),
    Description VARCHAR(255)
);

-- Table to associate fire protection systems with buildings
CREATE TABLE BuildingFireProtection (
    BuildingID INT,
    SystemID INT
);

-- Table to store information about emergency response procedures
CREATE TABLE EmergencyResponseProcedures (
    ProcedureID INT PRIMARY KEY,
    ProcedureName VARCHAR(100),
    Description VARCHAR(255)
);

-- Table to associate emergency response procedures with buildings
CREATE TABLE BuildingEmergencyProcedures (
    BuildingID INT,
    ProcedureID INT
);


-- Insert data into BuildingConstruction table
INSERT INTO BuildingConstruction (BuildingID, ConstructionType, OccupancyType, MaximumOccupancy, YearBuilt)
VALUES
(1, 'Steel Frame', 'Office', 200, 2000),
(2, 'Reinforced Concrete', 'Warehouse', 500, 2010);

-- Insert data into FireProtectionSystems table
INSERT INTO FireProtectionSystems (SystemID, SystemType, Description)
VALUES
(1, 'Sprinkler System', 'Automatic water-based fire suppression'),
(2, 'Fire Alarm System', 'Detection and alert system for fire incidents');

-- Insert data into BuildingFireProtection table
INSERT INTO BuildingFireProtection (BuildingID, SystemID)
VALUES
(1, 1),
(2, 1),
(2, 2);

-- Insert data into EmergencyResponseProcedures table
INSERT INTO EmergencyResponseProcedures (ProcedureID, ProcedureName, Description)
VALUES
(1, 'Evacuation Plan', 'Guidelines for safely evacuating the building'),
(2, 'Fire Drill Protocol', 'Scheduled drills to practice emergency response');

-- Insert data into BuildingEmergencyProcedures table
INSERT INTO BuildingEmergencyProcedures (BuildingID, ProcedureID)
VALUES
(1, 1),
(1, 2),
(2, 1);



--------------------Questions----------------
-- 1. Building Information:

-- 1.1 What is the construction type, occupancy type, and maximum occupancy of Building with ID 1?
select BuildingID, ConstructionType, OccupancyType, MaximumOccupancy from BuildingConstruction where BuildingID=1;

-- 1.2 In which year was Building with ID 2 built?
select YearBuilt from BuildingConstruction where BuildingID=2;

-- 2. Fire Protection Systems:

-- 2.1 What type of fire protection system does Building with ID 1 have?
select BC.BuildingID, FPS.SystemType, FPS.[Description]
from BuildingFireProtection BFP
join FireProtectionSystems FPS
on BFP.SystemID=FPS.SystemID
join BuildingConstruction BC
on BC.BuildingID=BFP.BuildingID
where BC.BuildingID=1;

-- 2.2 List all buildings with a Fire Alarm System (SystemID = 2).

select BuildingID from BuildingFireProtection where SystemID=2;

--3. Emergency Response Procedures:

-- 3.1 What is the description of the evacuation plan (ProcedureID = 1)?
select Description from EmergencyResponseProcedures where ProcedureID = 1;

-- 3.2 Which buildings have both an evacuation plan and a fire drill protocol?
SELECT BuildingID
FROM BuildingEmergencyProcedures
WHERE ProcedureID IN (1, 2)
GROUP BY BuildingID
HAVING COUNT(DISTINCT ProcedureID) = 2;

-- 4. Associations:

-- 4.1 Retrieve a list of buildings with their associated fire protection systems.
SELECT BC.BuildingID, BC.ConstructionType, BC.OccupancyType, FPS.SystemType
FROM BuildingConstruction BC
JOIN BuildingFireProtection BFP ON BC.BuildingID = BFP.BuildingID
JOIN FireProtectionSystems FPS ON BFP.SystemID = FPS.SystemID;


-- 4.2 Identify the emergency response procedures associated with Building 1.
select ERP.ProcedureID, ERP.ProcedureName,ERP.Description
from EmergencyResponseProcedures ERP
join BuildingEmergencyProcedures BEP
on ERP.ProcedureID=BEP.ProcedureID
where BEP.BuildingID=1