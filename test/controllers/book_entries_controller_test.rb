require 'test_helper'

class BookEntriesControllerTest < ActionController::TestCase
  setup do
    @book_entry = book_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_entry" do
    assert_difference('BookEntry.count') do
      post :create, book_entry: { bookentry_fecha_ingreso: @book_entry.bookentry_fecha_ingreso, bookentry_numero_documento: @book_entry.bookentry_numero_documento, bookentry_tipo_documento: @book_entry.bookentry_tipo_documento, editorial_nombre: @book_entry.editorial_nombre, string: @book_entry.string }
    end

    assert_redirected_to book_entry_path(assigns(:book_entry))
  end

  test "should show book_entry" do
    get :show, id: @book_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_entry
    assert_response :success
  end

  test "should update book_entry" do
    patch :update, id: @book_entry, book_entry: { bookentry_fecha_ingreso: @book_entry.bookentry_fecha_ingreso, bookentry_numero_documento: @book_entry.bookentry_numero_documento, bookentry_tipo_documento: @book_entry.bookentry_tipo_documento, editorial_nombre: @book_entry.editorial_nombre, string: @book_entry.string }
    assert_redirected_to book_entry_path(assigns(:book_entry))
  end

  test "should destroy book_entry" do
    assert_difference('BookEntry.count', -1) do
      delete :destroy, id: @book_entry
    end

    assert_redirected_to book_entries_path
  end
end
