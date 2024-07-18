# Fire Safety SQL and Pandas Project
Recording: https://testingcircle-my.sharepoint.com/personal/lzheng_spartaglobal_com/_layouts/15/stream.aspx?id=%2Fpersonal%2Flzheng%5Fspartaglobal%5Fcom%2FDocuments%2FRecordings%2FFire%20Safety%20%2DSql%20%26%20Pandas%2D20240718%5F150232%2DMeeting%20Recording%2Emp4&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2E04a60a77%2Ddb0d%2D42c1%2D8c1c%2D106cdb57df78&ga=1

### Description

This project leverages SQL and Python to analyze fire safety data. The goal is to gain insights into fire incidents, response times, and safety measures. By using SQL for data retrieval and Python for data analysis and visualization, we can uncover patterns and trends that are crucial for improving fire safety protocols.

### Technologies

SQL: Used for querying and managing the fire safety data stored in a database.
Python: Utilized for data analysis and visualization, primarily through the Pandas library.

### Features

Data Extraction: Efficiently extracting relevant fire safety data using SQL queries.
Data Analysis: Using Python and Pandas to perform comprehensive data analysis.
Visualization: Creating insightful visualizations to represent the findings.


### Questions 
## Pandas:

1. Building Information:
✅1.1 What are the details of Building with ID 5, including construction type, occupancy type, and maximum occupancy?
✅1.2 Can you generate a summary of the maximum occupancy for each construction type?

2. Fire Protection Systems:
✅2.1 How many buildings have a Water Mist System, and what are their details?
✅2.2 Provide a breakdown of the count of buildings for each type of fire protection system.
✅2.3 Distribution of fire protection systems for each occupancy type

3. Emergency Response Procedures:
✅3.1 Which emergency response procedures are associated with Building 8?
✅3.2 Can you list the unique emergency response procedures in the dataset and their occurrence counts?

4. Associations:
✅ 4.1 How many buildings have both a Sprinkler System and a Fire Drill Protocol?
✅ 4.2 Emergency response procedures associated with each combination of fire protection systems

5. Analysis:
✅ 5.1 Number of buildings constructed before the year 2000
✅ 5.2 Most common construction type in the dataset
✅ 5.3 Trend of building construction over the years

## SQL:
-- 1. Building Information:
-- 1.1 What is the construction type, occupancy type, and maximum occupancy of Building with ID 1?
-- 1.2 In which year was Building with ID 2 built?

-- 2. Fire Protection Systems:
-- 2.1 What type of fire protection system does Building with ID 1 have?
-- 2.2 List all buildings with a Fire Alarm System (SystemID = 2)

--3. Emergency Response Procedures:
-- 3.1 What is the description of the evacuation plan (ProcedureID = 1)?
-- 3.2 Which buildings have both an evacuation plan and a fire drill protocol?

-- 4. Associations:
-- 4.1 Retrieve a list of buildings with their associated fire protection systems.
-- 4.2 Identify the emergency response procedures associated with Building 




