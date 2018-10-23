class GooglePage
  include PageObject
  page_url('https://www.google.com/')

  text_field(:search_box, name: 'q')
  button(:search, name: 'btnK')
end