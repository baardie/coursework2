val sqlContext = sc.read.csv("places.csv")
//create sql context (the relative file)

val df = sqlContext.sql("SELECT price AS price, COUNT(*) AS placecount FROM places GROUP BY price")
//create a variable that is the result of the sql query

df.show()
//display the result
df.filter(df("price") === "$" || df("price") === "$$" || df("price") === "$$$").show()
//filter the result based on prices

System.exit(0)
