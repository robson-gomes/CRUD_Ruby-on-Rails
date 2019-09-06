require "application_system_test_case"

class BlogLegalsTest < ApplicationSystemTestCase
  setup do
    @blog_legal = blog_legals(:one)
  end

  test "visiting the index" do
    visit blog_legals_url
    assert_selector "h1", text: "Blog Legals"
  end

  test "creating a Blog legal" do
    visit blog_legals_url
    click_on "New Blog Legal"

    fill_in "Text", with: @blog_legal.text
    fill_in "Titulo", with: @blog_legal.titulo
    click_on "Create Blog legal"

    assert_text "Blog legal was successfully created"
    click_on "Back"
  end

  test "updating a Blog legal" do
    visit blog_legals_url
    click_on "Edit", match: :first

    fill_in "Text", with: @blog_legal.text
    fill_in "Titulo", with: @blog_legal.titulo
    click_on "Update Blog legal"

    assert_text "Blog legal was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog legal" do
    visit blog_legals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog legal was successfully destroyed"
  end
end
