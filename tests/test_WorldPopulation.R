# Test to see if a country name passed to function WorldPopulation is in the
# cleaned data file `WorldPopulation`. If the country is not present,
#then the function `CountryPopulation` should return an error.



test_that('Catches errors', {
  expect_error(CountryPopulation('Italie'))
})
