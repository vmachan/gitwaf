# gitwaf
Automate creation of Waffle epics via creating GitHub using GHI

### UPDATE (May 11th 2019): Waffle has announced that it will be [retired by May 16th 2019](https://waffle.io/). You should still be able to use this script to create GitHub issues with dependencies

**Premise**: Given a logical main topic or in Waffle terms "epic", this code creates the epic as well as the standardized sub-tasks that are children of the Epic task. 

* Pre-requisites
  * GitHub account and repository
  * Waffle account and project created on Github repository
    * **NOTE** A Waffle account is only needed if you plan to use Waffle to manage your project(s).
  * GHI installed (available here - https://github.com/stephencelis/ghi)
    * Use the above link to get information and instructions about GHI. 

* USAGE: 
  * It is assumed that you have setup GHI and are able to successfully run GHI commands 
  * Copy code to repository's root folder
  * Create your EPIC template folder
    * Every EPIC template is mapped to its own folder and the folder contains the respective .md files for each child task
    * The child task .md file names start with 0 (for the EPIC issue) and in increasing order where 2 depends on 1, 3 depends on 2 and so on
    * The code consists a sample for data warehouses (dw-epic) with 7 child task templates
    * **NOTE** The first line of the main task (file starting with 0) has the title of the EPIC.
   * Set the environment variable GITHUB_USER to your github user
     * `export GITHUB_USER=vicsmith`
   * Make the shell scripts executable by running following command
     * `chmod u+x *sh`
   * Now execute the following command to create the GitHub issues based on your template folder
     * `./create_epic.sh <EPIC FOLDER NAME>`
   * Use your browser to check your GitHub repository as well as Waffle project mapped to the repository to see the cards and dependencies   

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

