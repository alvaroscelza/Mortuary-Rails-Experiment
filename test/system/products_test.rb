require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Buy price", with: @product.buy_price
    fill_in "Client taxes percentage", with: @product.client_taxes_percentage
    fill_in "Code", with: @product.code
    fill_in "Description", with: @product.description
    fill_in "Name", with: @product.name
    fill_in "Provider", with: @product.provider_id
    fill_in "Sell price", with: @product.sell_price
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Buy price", with: @product.buy_price
    fill_in "Client taxes percentage", with: @product.client_taxes_percentage
    fill_in "Code", with: @product.code
    fill_in "Description", with: @product.description
    fill_in "Name", with: @product.name
    fill_in "Provider", with: @product.provider_id
    fill_in "Sell price", with: @product.sell_price
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
