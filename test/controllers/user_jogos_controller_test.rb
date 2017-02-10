require 'test_helper'

class UserJogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_jogo = user_jogos(:one)
  end

  test "should get index" do
    get user_jogos_url
    assert_response :success
  end

  test "should get new" do
    get new_user_jogo_url
    assert_response :success
  end

  test "should create user_jogo" do
    assert_difference('UserJogo.count') do
      post user_jogos_url, params: { user_jogo: { jogo_id: @user_jogo.jogo_id, user_id: @user_jogo.user_id } }
    end

    assert_redirected_to user_jogo_url(UserJogo.last)
  end

  test "should show user_jogo" do
    get user_jogo_url(@user_jogo)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_jogo_url(@user_jogo)
    assert_response :success
  end

  test "should update user_jogo" do
    patch user_jogo_url(@user_jogo), params: { user_jogo: { jogo_id: @user_jogo.jogo_id, user_id: @user_jogo.user_id } }
    assert_redirected_to user_jogo_url(@user_jogo)
  end

  test "should destroy user_jogo" do
    assert_difference('UserJogo.count', -1) do
      delete user_jogo_url(@user_jogo)
    end

    assert_redirected_to user_jogos_url
  end
end
