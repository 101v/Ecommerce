defmodule EcommerceWeb.CartController do
  use EcommerceWeb, :controller

  alias Ecommerce.ShoppingCart

  def show(conn, _params) do
    render(conn, :show, changeset: ShoppingCart.change_cart(conn.assigns.cart))
  end

  def update(conn, %{"cart" => cart_param}) do
    case ShoppingCart.update_cart(conn.assigns.cart, cart_param) do
      {:ok, _cart} ->
        redirect(conn, to: Routes.cart_path(conn, :show))

      {:error, _changeset} ->
        conn
        |> put_flash(:error, "There was an error updating your cart")
        |> redirect(to: Routes.cart_path(conn, :show))
    end
  end
end
