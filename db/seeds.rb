# API of country names and slugs: https://api.covid19api.com/countries
# API of country data: https://api.covid19api.com/total/dayone/country/SLUG

# Country.create(name: "", slug: "", data_url: "")
# Chart.create(country_id: , collection_id: )
# Collection.create(name: "", summary: "")


Country.create(name: "United States of America", slug: "united-states", data_url: "https://api.covid19api.com/total/dayone/country/united-states")
Country.create(name: "China", slug: "china", data_url: "https://api.covid19api.com/total/dayone/country/china")
Country.create(name: "Italy", slug: "italy", data_url: "https://api.covid19api.com/total/dayone/country/italy")
Country.create(name: "Russian Federation", slug: "russia", data_url: "https://api.covid19api.com/total/dayone/country/russia")
Country.create(name: "Canada", slug: "canada", data_url: "https://api.covid19api.com/total/dayone/country/canada")
Country.create(name: "Spain", slug: "spain", data_url: "https://api.covid19api.com/total/dayone/country/spain")
Country.create(name: "Mexico", slug: "mexico", data_url: "https://api.covid19api.com/total/dayone/country/mexico")





Collection.create(name: "Early Large Case Numbers", summary: "A collection of countries that had the earliest large numbers of confirmed cases.")
Collection.create(name: "North America", summary: "A collection of North American Countries for comparison.")
Collection.create(name: "Europe", summary: "A small collection of European countries.")

Chart.create(country_id: 1, collection_id: 1)
Chart.create(country_id: 2, collection_id: 1)
Chart.create(country_id: 3, collection_id: 1)
Chart.create(country_id: 6, collection_id: 1)

Chart.create(country_id: 3, collection_id: 3)
Chart.create(country_id: 4, collection_id: 3)
Chart.create(country_id: 6, collection_id: 3)

Chart.create(country_id: 1, collection_id: 2)
Chart.create(country_id: 5, collection_id: 2)
Chart.create(country_id: 7, collection_id: 2)

