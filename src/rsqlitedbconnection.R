library(DBI)
# Create an ephemeral in-memory RSQLite database
con <- DBI::dbConnect(RSQLite::SQLite(), dbname = ":memory:")

DBI::dbListTables(con)
DBI::dbWriteTable(conn = con, name = "mtcars", value = mtcars)
DBI::dbListTables(con)

DBI::dbListFields(conn = con, "mtcars")

# You can fetch all results:
res <- DBI::dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4")
DBI::dbFetch(res)
DBI::dbClearResult(res)

# Or a chunk at a time
res <- DBI::dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4")
while (!DBI::dbHasCompleted(res)) {
  chunk <- DBI::dbFetch(res, n = 5)
  print(nrow(chunk))
}
DBI::dbClearResult(res)

DBI::dbDisconnect(con)
