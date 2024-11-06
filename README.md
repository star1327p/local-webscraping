# Webscraping from Local HTML File

- Some computation servers block users from pulling a URL directly, so we have to download the HTML page first. Then we can do webscraping locally to retrieve data from the HTML file.
- Downloading static webpages allows us to retrieve the data even when the webpage is removed in the future. This is feasible for developing a "stand still in time" analysis.
- If we want to auto-update a web dashboard, we will benefit from using external APIs, such as the Bureau of Labor Statistics API [(link)](https://www.bls.gov/developers/api_signature_v2.htm). In this case, we will have to request access for these APIs. 
