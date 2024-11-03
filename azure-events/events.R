library(httr)
library(jsonlite)
library(dotenv)
library(AzureStor)

# workaround to reload dotenv after adding new keys
detach("package:dotenv", unload=TRUE)
library(dotenv)

# Connecting to BLOB Storage

aBlob <- storage_endpoint(endpoint=Sys.getenv("AzureBlobUrl"), key=Sys.getenv("AzureKey1"))
aCont <- storage_container(endpoint=aBlob, name=Sys.getenv("AzureContainer"))

files <- list_storage_files(container = aCont)



