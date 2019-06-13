# writing Metadata in EML for the SBL permanent forest plots of Lac Croche

# Package
library(EML)


creator <- list(individualName = list(givenName = "Alexis", surName = "Carteron"))
sbl_croche <- list(dataset = list(
  title = "Metadata of the permanent forest plots of Lac Croche",
  creator = creator,
  contact = creator)
)

# Coverage metadata

geographicDescription <- "Station de biologie des Laurentides"

coverage <- set_coverage(begin = '1998',
               geographicDescription = geographicDescription)


write_eml(sbl_croche, "sbl_croche.xml")
eml_validate("sbl_croche.xml")
