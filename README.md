ETL Project by Save the Data Team
===============

![](https://whatphone.com.au/assets/2018/02/data-840x630.jpg)

### Project to Summary:

The aim of this project was to build a database that would allow users to examine the relationship between a country’s happiness, as reported in the world happiness report, and its average cost of living.  We assumed that countries with a higher happiness score would have a higher cost of living, potentially reflecting an inverse association ie happier country = more expensive to live in. The end result a database that enables users to query on the intersection of multiple datasets for further and more detailed analysis.   

### Prepared By:

* Yann Chye
* Baili Li (Esther)
* Michelle Hocking
* Eamonn McCallum
***

### Dependencies:
* Python version 3.x (minimum)
* Python modules listed in *00_config/requirements.txt*. If you have PIP, use ***pip install -r requirements.txt*** to install listed modules.
* A kaggle account, and an ‘api_key.py’ file containing your kaggle username and a user-specific kaggle api key (refer to https://github.com/Kaggle/kaggle-api). This is needed to be able to interact with the kaggle api to extract their dataset. A template ‘api_key_template.py’ file is available in the ‘00_config’ folder. Populate it with your username and api key, rename it to ‘api_key.py’, and move it into the root folder.
* postgreSQL, with a ‘password.py’ file containing your password. A template ‘password_template.py’ file is available in the ‘00_config’ folder. Populate it with your postgreSQL username and password (default username is ‘postgres’), rename it to ‘password.py’, and move it into the root folder.
* Code should be run in the order of:
  * 01 (extract) > 02 (transform) > 03 (load) 
  * 02_transform_country.ipynb needs to be run before 02_transform_coli.ipynb and 02_transform_happiness.ipynb

### ELT Diagram
  ![](STD_ETL_diag.png)

**Git Repository Map:**

| Phase | Description| NotesBooks and Relates Directors  |
| --------  | ------------------- | --------------------- |
| Extract | **Country and Continent Data**| "01_extract_country.ipynb" -> /01_extract_country **CSV**| 
| Extract | **Cost of Living Expense & Property Prices**| "01_extract_coli.ipynb" -> /01_extract_coli **CSVs by year**| 
| Extract | **World Happy Data** | "01_extract_happiness.ipynb" -> /01_extract_happiness  **CSVs by year**| 
| Transform | **Country and Continent Data Cleaning** | "02_transform_country.ipynb" -> 02_transform_country.ipynb **cleaned CSV**| 
| Transform | **Cost of Living Data Cleaning** | "02_transform_coli.ipynb" -> 02_transform_coli.ipynb **cleaned CSV**| 
| Transform | **World Happy Data Cleaning** | "01_extract_happiness.ipynb" -> /01_extract_happiness **cleaned CSV**| 
| Load | **Entity Relationship Diagram** | "erd.png" -> /03_load | 
| Load | **Create postgreSQL Database and Import Data** | "03_load.ipynb" | 


  

  
