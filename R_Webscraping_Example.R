library(rvest)

# Webpage URL: https://nrp.web.irs.gov/1040-study.html#tab=tab1
nrp_page = read_html("NRP_1040_Study_Webpage.html")
tbl_elt = nrp_page %>% html_element("table") %>% html_table()
names(tbl_elt) = c("StudyYear","SampleSize","PercentComplete")
tbl_elt$SampleSize = as.numeric(gsub(",","",tbl_elt$SampleSize))

View(tbl_elt)

tax_years=c(2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017)
inds = which(tbl_elt$StudyYear %in% tax_years)
tax_nrp=tbl_elt$SampleSize[inds]
