**PROJECT WEBSITE README**
Folder Structure

Project Website
├── static
│   ├── images
│   │   ├── logo.jpg
│   │   └── topbanner.jpg
│   ├── styles
│   │   ├── style.css
│   │   └── styles2.css
├── templates
│   ├── homepage.html
│   └── indexCopy.html
├── app.py
├── DBConnect.py
└── SAFRANFS TABLE SCRIPT.sql


**HOW TO**
1) Ensure that in DBConenct.py the MySQL server credentials match what is in there and that the user signing in has permissions to select the tables
2) Make sure to have MySQL Server up and running
3) Run app.py file
4) In web browser go to http://127.0.0.1:5000 and you should be able to navigate and view the            website as intended

**NOTE**
The Python files use the following libraries: pandas, mysql.connector, flask.  You will need
to have these libraries installed along with Python in order for things to work properly.  You will also need to make sure the files and folders are structured in the same way as 
pictured above.  Make sure to run SQL table script in MySQL before running app.py otherwise there will be no data to be retrieved.