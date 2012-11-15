require 'test_helper'

class MeditationPostsControllerTest < ActionController::TestCase
  setup do
    @meditation_post = meditation_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meditation_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meditation_post" do
    assert_difference('MeditationPost.count') do
      post :create, meditation_post: { breath: @meditation_post.breath, feeling: @meditation_post.feeling, length: @meditation_post.length, user_id: @meditation_post.user_id }
    end

    assert_redirected_to meditation_post_path(assigns(:meditation_post))
  end

  test "should show meditation_post" do
    get :show, id: @meditation_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meditation_post
    assert_response :success
  end

  test "should update meditation_post" do
    put :update, id: @meditation_post, meditation_post: { breath: @meditation_post.breath, feeling: @meditation_post.feeling, length: @meditation_post.length, user_id: @meditation_post.user_id }
    assert_redirected_to meditation_post_path(assigns(:meditation_post))
  end

  test "should destroy meditation_post" do
    assert_difference('MeditationPost.count', -1) do
      delete :destroy, id: @meditation_post
    end

    assert_redirected_to meditation_posts_path
  end
end
