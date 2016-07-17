require 'test_helper'

class BookEntryDetailsControllerTest < ActionController::TestCase
  setup do
    @book_entry_detail = book_entry_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_entry_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_entry_detail" do
    assert_difference('BookEntryDetail.count') do
      post :create, book_entry_detail: { book_id: @book_entry_detail.book_id, bookentry_id: @book_entry_detail.bookentry_id, bookentrydetail_cantidad_ejemplares: @book_entry_detail.bookentrydetail_cantidad_ejemplares, bookentrydetail_titulo: @book_entry_detail.bookentrydetail_titulo }
    end

    assert_redirected_to book_entry_detail_path(assigns(:book_entry_detail))
  end

  test "should show book_entry_detail" do
    get :show, id: @book_entry_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_entry_detail
    assert_response :success
  end

  test "should update book_entry_detail" do
    patch :update, id: @book_entry_detail, book_entry_detail: { book_id: @book_entry_detail.book_id, bookentry_id: @book_entry_detail.bookentry_id, bookentrydetail_cantidad_ejemplares: @book_entry_detail.bookentrydetail_cantidad_ejemplares, bookentrydetail_titulo: @book_entry_detail.bookentrydetail_titulo }
    assert_redirected_to book_entry_detail_path(assigns(:book_entry_detail))
  end

  test "should destroy book_entry_detail" do
    assert_difference('BookEntryDetail.count', -1) do
      delete :destroy, id: @book_entry_detail
    end

    assert_redirected_to book_entry_details_path
  end
end
