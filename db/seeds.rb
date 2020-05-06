# API of country names and slugs: https://api.covid19api.com/countries
# API of country data: https://api.covid19api.com/total/dayone/country/SLUG

# Country.create(name: "", slug: "", data_url: "")
# Chart.create(country_id: , collection_id: )
# Collection.create(name: "", summary: "")


country1 = Country.create(name: "United States of America", slug: "united-states", data_url: "https://api.covid19api.com/total/dayone/country/united-states")
country2 = Country.create(name: "China", slug: "china", data_url: "https://api.covid19api.com/total/dayone/country/china")
country3 = Country.create(name: "Italy", slug: "italy", data_url: "https://api.covid19api.com/total/dayone/country/italy")
country4 = Country.create(name: "Russian Federation", slug: "russia", data_url: "https://api.covid19api.com/total/dayone/country/russia")
country5 = Country.create(name: "Canada", slug: "canada", data_url: "https://api.covid19api.com/total/dayone/country/canada")
country6 = Country.create(name: "Spain", slug: "spain", data_url: "https://api.covid19api.com/total/dayone/country/spain")
country7 = Country.create(name: "Mexico", slug: "mexico", data_url: "https://api.covid19api.com/total/dayone/country/mexico")

collection1 = Collection.create(name: "Early Large Case Numbers", summary: "A collection of countries that had the earliest large numbers of confirmed cases.")
collection2 = Collection.create(name: "North America", summary: "A collection of North American Countries for comparison.")
collection3 = Collection.create(name: "Europe", summary: "A small collection of European countries.")

chart1 = Chart.new(country_id: 1, collection_id: 1)
chart2 = Chart.new(country_id: 2, collection_id: 1)
chart3 = Chart.new(country_id: 3, collection_id: 1)
chart4 = Chart.new(country_id: 6, collection_id: 1)

chart5 = Chart.new(country_id: 3, collection_id: 3)
chart6 = Chart.new(country_id: 4, collection_id: 3)
chart7 = Chart.new(country_id: 6, collection_id: 3)

chart8 = Chart.new(country_id: 1, collection_id: 2)
chart9 = Chart.new(country_id: 5, collection_id: 2)
chart10 = Chart.new(country_id: 7, collection_id: 2)

chart1.save
chart2.save
chart3.save
chart4.save
chart5.save
chart6.save
chart7.save
chart8.save
chart9.save
chart10.save


