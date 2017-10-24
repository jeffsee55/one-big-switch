require 'rails_helper'

RSpec.describe 'Posts page', type: :request do
  it 'displays all of the posts' do
    post = Post.create(name: 'Post 1', body: 'Post body')
    get '/posts'

    assert_select ".text", :text => "Post body"
  end
end