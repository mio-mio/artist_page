require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:songs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post :create, song: { illustration: @song.illustration, itunes_url: @song.itunes_url, lyrics: @song.lyrics, music: @song.music, music_url: @song.music_url, pv_director: @song.pv_director, singer: @song.singer, title: @song.title, youtube_id: @song.youtube_id }
    end

    assert_redirected_to song_path(assigns(:song))
  end

  test "should show song" do
    get :show, id: @song
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song
    assert_response :success
  end

  test "should update song" do
    patch :update, id: @song, song: { illustration: @song.illustration, itunes_url: @song.itunes_url, lyrics: @song.lyrics, music: @song.music, music_url: @song.music_url, pv_director: @song.pv_director, singer: @song.singer, title: @song.title, youtube_id: @song.youtube_id }
    assert_redirected_to song_path(assigns(:song))
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete :destroy, id: @song
    end

    assert_redirected_to songs_path
  end
end
