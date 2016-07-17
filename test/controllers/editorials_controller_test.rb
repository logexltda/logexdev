require 'test_helper'

class EditorialsControllerTest < ActionController::TestCase
  setup do
    @editorial = editorials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:editorials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create editorial" do
    assert_difference('Editorial.count') do
      post :create, editorial: { editorial_descripcion: @editorial.editorial_descripcion, editorial_direccion: @editorial.editorial_direccion, editorial_email_contacto: @editorial.editorial_email_contacto, editorial_nombre_contacto: @editorial.editorial_nombre_contacto, editorial_razon_social: @editorial.editorial_razon_social, editorial_rut: @editorial.editorial_rut }
    end

    assert_redirected_to editorial_path(assigns(:editorial))
  end

  test "should show editorial" do
    get :show, id: @editorial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @editorial
    assert_response :success
  end

  test "should update editorial" do
    patch :update, id: @editorial, editorial: { editorial_descripcion: @editorial.editorial_descripcion, editorial_direccion: @editorial.editorial_direccion, editorial_email_contacto: @editorial.editorial_email_contacto, editorial_nombre_contacto: @editorial.editorial_nombre_contacto, editorial_razon_social: @editorial.editorial_razon_social, editorial_rut: @editorial.editorial_rut }
    assert_redirected_to editorial_path(assigns(:editorial))
  end

  test "should destroy editorial" do
    assert_difference('Editorial.count', -1) do
      delete :destroy, id: @editorial
    end

    assert_redirected_to editorials_path
  end
end
