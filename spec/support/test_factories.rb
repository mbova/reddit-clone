module TestFactories
  
  def post_without_user(options={})
    post = Post.new(options)
    allow(post).to receive(:create_vote)
    post.save
    post
  end

  def authenticated_user
    email = "email#{rand}@fake.com"
    user = User.new(email: email, password: 'password')
    user.skip_confirmation!
    user.save
    user
  end
end