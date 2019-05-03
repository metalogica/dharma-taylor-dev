require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    page.has_content?('featured')
  end
end
