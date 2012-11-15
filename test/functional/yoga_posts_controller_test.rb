require 'test_helper'

class YogaPostsControllerTest < ActionController::TestCase
  setup do
    @yoga_post = yoga_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yoga_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yoga_post" do
    assert_difference('YogaPost.count') do
      post :create, yoga_post: { breath: @yoga_post.breath, feeling: @yoga_post.feeling, intention: @yoga_post.intention, user_id: @yoga_post.user_id }
    end

    assert_redirected_to yoga_post_path(assigns(:yoga_post))
  end

  test "should show yoga_post" do
    get :show, id: @yoga_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yoga_post
    assert_response :success
  end

  test "should update yoga_post" do
    put :update, id: @yoga_post, yoga_post: { breath: @yoga_post.breath, feeling: @yoga_post.feeling, intention: @yoga_post.intention, user_id: @yoga_post.user_id }
    assert_redirected_to yoga_post_path(assigns(:yoga_post))
  end

  test "should destroy yoga_post" do
    assert_difference('YogaPost.count', -1) do
      delete :destroy, id: @yoga_post
    end

    assert_redirected_to yoga_posts_path
  end
end
