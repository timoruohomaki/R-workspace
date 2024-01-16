library(jsonlite)
library(dplyr)
library(sf)
library(httr)
library(tidyverse)
library(ows4R)

# Nuuka OpenAPI docs: https://helsinki-openapi.nuuka.cloud/swagger/index.html 

propertyList <- fromJSON("https://helsinki-openapi.nuuka.cloud/api/v1.0/Property/List")

# adding propertyID (currently in format "1234 PropertyName")

propertyList.clean1 <- propertyList %>% rowwise(propertyName) %>% mutate(propertyID = sapply(strsplit(propertyName," "), `[`, 1))
propertyList.clean2 <- propertyList.clean1 %>% rowwise(propertyName) %>% mutate(propertyName = substring(propertyName, 5))
propertyList <- propertyList.clean2[, c(4,2,3)]

rm(propertyList.clean1,propertyList.clean2)

# rakennustiedot HSY Avoin data: pks_rakennukset_paivittyva
# rakennustiedot HEL Avoin data: Rakennukset_alue_rekisteritiedot

hel.wfs <- "https://kartta.hel.fi/ws/geoserver/avoindata/wfs"
hsy.wfs <- "https://kartta.hsy.fi/geoserver/wfs"

hel.url <- parse_url(hel.wfs)
hel.url$query <- list(service = "wfs",
                     #version = "2.0.0",
                     request = "GetCapabilities")
hel.request <- build_url(hel.url)

hel.client <- WFSClient$new(hel.wfs, serviceVersion = "2.0.0")

hel.client$getFeatureTypes(pretty = TRUE)

hel.client$
        describeFeatureType(typeName = "Rakennukset_alue_rekisteritiedot") %>%
        map_chr(function(x){x$getName()})
