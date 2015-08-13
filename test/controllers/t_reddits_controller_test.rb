require 'test_helper'

class TRedditsControllerTest < ActionController::TestCase
  setup do
    @t_reddit = t_reddits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_reddits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_reddit" do
    assert_difference('TReddit.count') do
      post :create, t_reddit: { author: @t_reddit.author, blog_entry: @t_reddit.blog_entry, title: @t_reddit.title }
    end

    assert_redirected_to t_reddit_path(assigns(:t_reddit))
  end

  test "should show t_reddit" do
    get :show, id: @t_reddit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_reddit
    assert_response :success
  end

  test "should update t_reddit" do
    patch :update, id: @t_reddit, t_reddit: { author: @t_reddit.author, blog_entry: @t_reddit.blog_entry, title: @t_reddit.title }
    assert_redirected_to t_reddit_path(assigns(:t_reddit))
  end

  test "should destroy t_reddit" do
    assert_difference('TReddit.count', -1) do
      delete :destroy, id: @t_reddit
    end

    assert_redirected_to t_reddits_path
  end
end
