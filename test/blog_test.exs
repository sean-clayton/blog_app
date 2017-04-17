defmodule BlogApp.BlogTest do
  use BlogApp.DataCase

  alias BlogApp.Blog
  alias BlogApp.Blog.Post

  @create_attrs %{body: "some body", title: "some title"}
  @update_attrs %{body: "some updated body", title: "some updated title"}
  @invalid_attrs %{body: nil, title: nil}

  def fixture(:post, attrs \\ @create_attrs) do
    {:ok, post} = Blog.create_post(attrs)
    post
  end

  test "list_posts/1 returns all posts" do
    post = fixture(:post)
    assert Blog.list_posts() == [post]
  end

  test "get_post! returns the post with given id" do
    post = fixture(:post)
    assert Blog.get_post!(post.id) == post
  end

  test "create_post/1 with valid data creates a post" do
    assert {:ok, %Post{} = post} = Blog.create_post(@create_attrs)
    assert post.body == "some body"
    assert post.title == "some title"
  end

  test "create_post/1 with invalid data returns error changeset" do
    assert {:error, %Ecto.Changeset{}} = Blog.create_post(@invalid_attrs)
  end

  test "update_post/2 with valid data updates the post" do
    post = fixture(:post)
    assert {:ok, post} = Blog.update_post(post, @update_attrs)
    assert %Post{} = post
    assert post.body == "some updated body"
    assert post.title == "some updated title"
  end

  test "update_post/2 with invalid data returns error changeset" do
    post = fixture(:post)
    assert {:error, %Ecto.Changeset{}} = Blog.update_post(post, @invalid_attrs)
    assert post == Blog.get_post!(post.id)
  end

  test "delete_post/1 deletes the post" do
    post = fixture(:post)
    assert {:ok, %Post{}} = Blog.delete_post(post)
    assert_raise Ecto.NoResultsError, fn -> Blog.get_post!(post.id) end
  end

  test "change_post/1 returns a post changeset" do
    post = fixture(:post)
    assert %Ecto.Changeset{} = Blog.change_post(post)
  end
end
