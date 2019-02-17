# gitwaf
Automate creation of Waffle epics via creating GitHub using GHI

**Premise**: Given a logical main topic or in Waffle terms "epic", this code creates the epic as well as the standardized sub-tasks that are children of the Epic task. 

* Pre-requisites
  * GitHub account and repository
  * Waffle account and project created on Github repository
  * GHI installed (available here - https://github.com/stephencelis/ghi)

#### On data warehouse projects, tasks required to implement every physical entity (table) could be grouped under an epic
##### This sets a standard for the development thought process, has consistent steps across epics and makes reporting consistent. 
  
  * **EXAMPLE**
    1. DIM_CUSTOMER _(This could be the main / epic issue )
       1. Gather business requirements
       2. Analysis of source data
       3. Source-to-Target mapping
       4. Physical definition (DDL) of Target table
       5. Unit tests 
       6. ETL Development
       7. Deployment
       
  * Each of the epics above follow the above standardized template with same sub-issues. 
  * Each sub-issue would contain instructions to complete that task and this could also be standardized
    * _EXAMPLE: Some standard questions to ask when collecting requirements_
    * _EXAMPLE: Standard (MIN, MAX, MEAN, MEDIAN, NULL value percentage, etc.) data statistics to be collected during data analysis_
 

### Inspite of adding a requirement to comply with standardized development process, this code reduces the time to get started and overall time-to-market

