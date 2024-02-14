import mysql.connector
import pandas as pd

def queryTable():
    connect = mysql.connector.connect(
        user="website_user",
        host="localhost",
        password="goatsquad",
        database="safranfs"
    )
    cursor = connect.cursor()
    tables = ["EMPLOYEE", "COMPUTERS", "SERVICES", "SOFTWARE", "DEPARTMENT", "VENDOR"] #List of the tables for the query to select each table in the for loop
    pdTables = []  # List to store DataFrames

    for table in tables:
        query = "SELECT * FROM " + table + ";" #Query each table
        cursor.execute(query)
        result = cursor.fetchall()
        desc = [desc[0] for desc in cursor.description] #Fetch table column headings
        df = pd.DataFrame(result, columns=desc)
        pdTable = df.to_html(index=False, header=True) # Convert to HTML
        pdTables.append(pdTable) #Store HTML tables in list

    return pdTables  # Return a list of HTML representations for all tables
