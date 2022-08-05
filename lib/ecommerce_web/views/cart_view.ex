defmodule EcommerceWeb.CartView do
  use EcommerceWeb, :view

  alias Ecommerce.ShoppingCart

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"
end
