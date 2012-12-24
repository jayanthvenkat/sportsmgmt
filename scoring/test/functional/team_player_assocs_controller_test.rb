require 'test_helper'

class TeamPlayerAssocsControllerTest < ActionController::TestCase
  setup do
    @team_player_assoc = team_player_assocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_player_assocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_player_assoc" do
    assert_difference('TeamPlayerAssoc.count') do
      post :create, team_player_assoc: { player_id: @team_player_assoc.player_id, team_id: @team_player_assoc.team_id }
    end

    assert_redirected_to team_player_assoc_path(assigns(:team_player_assoc))
  end

  test "should show team_player_assoc" do
    get :show, id: @team_player_assoc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_player_assoc
    assert_response :success
  end

  test "should update team_player_assoc" do
    put :update, id: @team_player_assoc, team_player_assoc: { player_id: @team_player_assoc.player_id, team_id: @team_player_assoc.team_id }
    assert_redirected_to team_player_assoc_path(assigns(:team_player_assoc))
  end

  test "should destroy team_player_assoc" do
    assert_difference('TeamPlayerAssoc.count', -1) do
      delete :destroy, id: @team_player_assoc
    end

    assert_redirected_to team_player_assocs_path
  end
end
