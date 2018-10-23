class ReceiptPage

  include PageObject

  page_url("http://localhost:55556/")

  text_field(:part_cost, id:'part')
  text_field(:paint_cost, id:'paint')
  text_field(:labor_cost, id:'labor')
  label(:tax, id:'tax')
  label(:total, id:'total')

  button(:calc, id:'calculate')

end