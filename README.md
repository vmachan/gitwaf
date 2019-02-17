# gitwaf
Automate creation of Waffle epics via creating GitHub using GHI

**Premise**: Given a logical main topic or in Waffle terms "epic", this code creates the epic as well as the standardized sub-tasks that are children of the Epic task. 

* Pre-requisites
  * GitHub account and repository
  * Waffle account and project created on Github repository
  * GHI installed (available here - https://github.com/stephencelis/ghi)

* USAGE: 
  * It is assumed that you have setup GHI and are able to successfully run GHI commands 
  * Copy code to repository's root folder
  * Create your EPIC template folder
    * Every EPIC template is mapped to its own folder and the folder contains the respective .md files for each child task
    * The child task .md file names start with 0 (for the EPIC issue) and in increasing order where 2 depends on 1, 3 depends on 2 and so on
    * The code consists a sample for data warehouses (dw-epic) with 7 child task templates
    * **NOTE** The first line of the main task (file starting with 0) has the title of the EPIC.
   * Once above content is created, execute the following command
    ./create_epic.sh <EPIC FOLDER NAME>
      * Example: ./create_epic.sh dw-epic
   * Check your GitHub repository as well as Waffle project mapped to the repository to see the cards and dependencies   

#### On data warehouse projects, tasks required to implement every physical entity (table) could be grouped under an epic
##### This sets a standard for the development thought process, has consistent steps across epics and makes reporting consistent. 
  
  * **EXAMPLE**
    1. DIM_CUSTOMER _(This could be the main / epic issue)_
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

