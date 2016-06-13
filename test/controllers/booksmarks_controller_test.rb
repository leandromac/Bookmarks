require 'test_helper'

class BooksmarksControllerTest < ActionController::TestCase
  setup do
    @booksmark = booksmarks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booksmarks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booksmark" do
    assert_difference('Booksmark.count') do
      post :create, booksmark: { title: @booksmark.title, url: @booksmark.url }
    end

    assert_redirected_to booksmark_path(assigns(:booksmark))
  end

  test "should show booksmark" do
    get :show, id: @booksmark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booksmark
    assert_response :success
  end

  test "should update booksmark" do
    patch :update, id: @booksmark, booksmark: { title: @booksmark.title, url: @booksmark.url }
    assert_redirected_to booksmark_path(assigns(:booksmark))
  end

  test "should destroy booksmark" do
    assert_difference('Booksmark.count', -1) do
      delete :destroy, id: @booksmark
    end

    assert_redirected_to booksmarks_path
  end
end
