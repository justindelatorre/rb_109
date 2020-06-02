=begin
Source: https://launchschool.com/blog/live-session-beginning-ruby-part-4

Write a method that takes the filter criteria in hashes query and query1 below
and returns the given outputs.

Input(s):
- Hash

Output(s):
- Array (of Hashes)

Example(s):
search(query)
# [ { name: 'Thinkpad x220', price: 250 }]

search(query2)
# [ { name: 'Dell Inspiron', price: 300 },
#   { name: 'Dell Inspiron', price: 450 } ]

Data Structure(s):
- Array
- Hash

Rules:
  Explicit:
  - N/A

  Implicit:
  - :price of returned Hashes must be between price_min and price_max of
    argument
  - :name must be a substring of :q key in argument
  - Capitalization of :name doesn't matter
  - :price values are inclusive

Clarifications:
- How do we handle invalid arguments, e.g. arguments not structured as query
  Hashes?

Algorithm:
- Initialize variables to store values from argument query
- Initialize Array variable to store valid products
- Loop through PRODUCTS Array using Enumerable#select and assign to Array
  - Conditions:
    - price < price_max
    - price > price_min
    - :name contains name
- Return first element of Array
=end

PRODUCTS = [
  { name: 'Thinkpad x210', price: 220 },
  { name: 'Thinkpad x220', price: 250 },
  { name: 'Thinkpad x250', price: 979 },
  { name: 'Thinkpad x230', price: 200 },
  { name: 'Thinkpad x230', price: 330 },
  { name: 'Thinkpad x230', price: 350 },
  { name: 'Thinkpad x240', price: 700 },
  { name: 'Macbook Leopard', price: 300 },
  { name: 'Macbook Air', price: 700 },
  { name: 'Macbook Pro', price: 600 },
  { name: 'Macbook', price: 1449 },
  { name: 'Dell Latitude', price: 200 },
  { name: 'Dell Latitude', price: 650 },
  { name: 'Dell Inspiron', price: 300 },
  { name: 'Dell Inspiron', price: 450 }
]

query = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad'
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(q)
  price_min = q[:price_min]
  price_max = q[:price_max]
  name = q[:q].capitalize

  arr = PRODUCTS.select do |product|
          product[:price] <= price_max && product[:price] >= price_min &&
          product[:name].include?(name)
        end

  arr
end

p search(query)
p search(query2)
