require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "draft? returns true to draft posts" do
    # assert BlogPost.new(published_at: nil).draft?
    assert blog_posts(:draft).draft? # it takes the fixtures draft: in the yaml file
  end

  test "draft? returns false to non-draft posts" do
    # refute BlogPost.new(published_at: 1.year.ago).draft?
    refute blog_posts(:published).draft?

    # arel_table basic example
    user = User.arel_table
    lexdrelUsers = User.where(user[:email].matches("%lexdrel%"))
    # this will return all users with email that contains lexdrel

    blog_post = BlogPost.arel_table
    lexdrelBlogPosts = BlogPost.order(blog_post[:published_at].desc.nulls_last)
  end
end
