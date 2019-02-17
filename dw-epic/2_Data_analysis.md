Data Analysis (source data)

###  Data Analysis (source data)

  * Describe the source systems for getting customer data. 
  * What attribute uniquely identifies a customer?
  * What are the various attributes/fields that describe a customer?
    *_EXAMPLE: Name, location, industry/sector, size_
  * Does the source system have historical customer data i.e. changes to customers over time?
  * Who are the primary end users, business groups that use customer data?
  * How often do they use this data i.e. daily, weekly, monthly, etc.?
  * Does the business need to know about ALL the changes done to a customer record?
    _i.e. are they okay getting a end-of-day or end-of-week snapshot/version of customer records?
  * What other entities is customer data related to? As a parent? As a child?
    _EXAMPLE: Are there customer hierarchies that we need to track and maintain?_
  * Describe the _shape_ of the customer data 
    * Volume (row count)
    * Number of customers (distinct customers)
    * NULL population - This is per field (e.g. location, industry, etc.)
    * Top N counts when grouped by fields such as location, industry, size, etc
