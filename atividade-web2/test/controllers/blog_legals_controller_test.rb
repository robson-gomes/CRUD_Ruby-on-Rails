require 'test_helper'

class BlogLegalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_legal = blog_legals(:one)
  end

  test "should get index" do
    get blog_legals_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_legal_url
    assert_response :success
  end

  test "should create blog_legal" do
    assert_difference('BlogLegal.count') do
      post blog_legals_url, params: { blog_legal: { text: @blog_legal.text, titulo: @blog_legal.titulo } }
    end

    assert_redirected_to blog_legal_url(BlogLegal.last)
  end

  test "should show blog_legal" do
    get blog_legal_url(@blog_legal)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_legal_url(@blog_legal)
    assert_response :success
  end

  test "should update blog_legal" do
    patch blog_legal_url(@blog_legal), params: { blog_legal: { text: @blog_legal.text, titulo: @blog_legal.titulo } }
    assert_redirected_to blog_legal_url(@blog_legal)
  end

  test "should destroy blog_legal" do
    assert_difference('BlogLegal.count', -1) do
      delete blog_legal_url(@blog_legal)
    end

    assert_redirected_to blog_legals_url
  end
end
