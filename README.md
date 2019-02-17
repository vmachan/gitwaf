# gitwaf
Automate creation of projects via creating Git issues using GHI

**Premise**: Given a logical main topic or in Waffle terms "epic", this code creates the epic as well as the standardized sub-tasks that are children of the Epic task.

#### On data warehouse projects, tasks required to implement every physical entity (table) could be grouped under an epic
  
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
 
#### Given a main (epic) task title and description, this project would generate the appropriate GitHub issues for the main as well as the standardized sub-issues and tag them per the Waffle convention so that they are grouped as a Waffle epic and can be used to track its progress.

