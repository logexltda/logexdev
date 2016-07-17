require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { book_ano: @book.book_ano, book_autor: @book.book_autor, book_cantidad_ejemplares: @book.book_cantidad_ejemplares, book_coleccion: @book.book_coleccion, book_encuadernacion: @book.book_encuadernacion, book_isbn: @book.book_isbn, book_paginas: @book.book_paginas, book_serie: @book.book_serie, book_titulo: @book.book_titulo, editorial_id: @book.editorial_id }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { book_ano: @book.book_ano, book_autor: @book.book_autor, book_cantidad_ejemplares: @book.book_cantidad_ejemplares, book_coleccion: @book.book_coleccion, book_encuadernacion: @book.book_encuadernacion, book_isbn: @book.book_isbn, book_paginas: @book.book_paginas, book_serie: @book.book_serie, book_titulo: @book.book_titulo, editorial_id: @book.editorial_id }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
