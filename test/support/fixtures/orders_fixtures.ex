defmodule Ecommerce.OrdersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ecommerce.Orders` context.
  """

  @doc """
  Generate a order.
  """
  def order_fixture(attrs \\ %{}) do
    {:ok, order} =
      attrs
      |> Enum.into(%{
        total_price: "120.5",
        user_uuid: "7488a646-e31f-11e4-aace-600308960662"
      })
      |> Ecommerce.Orders.create_order()

    order
  end
end
