{
"rowsperpage" : 10,
"database" : {
"connection" : "localmysql",
"sql" : "Select * from Customers",
"orderby" : "CustomerName",
"execute" : [
"DROP TABLE IF EXISTS Customers",
"CREATE TABLE IF NOT EXISTS Customers (CustomerID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,CustomerName NVARCHAR(255),ContactName NVARCHAR(255),Address NVARCHAR(255),City NVARCHAR(255),PostalCode NVARCHAR(255),Country NVARCHAR(255))",
"INSERT INTO Customers (CustomerName,ContactName,Address,City,PostalCode,Country) VALUES (\"Alfreds Futterkiste\",\"Maria Anders\",\"Obere Str. 57\",\"Berlin\",\"12209\",\"Germany\")"
]
}
}