from flask import Flask, render_template

app = Flask(__name__)


@app.route('/') #Render html template for the login page
def logIn():
    return render_template("homepage.html")
@app.route('/indexCopy.html') 
def sqlTable():
    from DBConnect import queryTable
    pdTable = queryTable() #Fetch table data to render into html template
    template = render_template("indexCopy.html", pandas_table=pdTable[0], pandas_table2=pdTable[1], pandas_table3=pdTable[2],pandas_table4=pdTable[3],pandas_table5=pdTable[4],pandas_table6=pdTable[5])
    return template

if __name__ == '__main__':
    app.run()
