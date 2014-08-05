module TestFactories

  def associated_post(options={})
    user = authenticated_user
    topic = Topic.create(name: 'Topic name')
    Post.create(title: 'Post title', body: 'Post bodies must be pretty long', topic: topic, user: user)
    post_options = { 
      title: 'Post title', 
      body: 'Post bodies must be pretty long.', 
      topic: Topic.create(name: 'Topic name'), 
      user: authenticated_user 
    }.merge(options)
    Post.create(post_options)
  end

  def authenticated_user(options={})
    user_options = {email: "email#{rand}@fake.com", password: 'password'}.merge(options)
    user = User.new(user_options)
    user.skip_confirmation!
    user.save
    user
  end

  def before_vote
    request.env["HTTP_REFERER"] = '/'
    @user = authenticated_user
    @post = associated_post
    sign_in @user
  end
end