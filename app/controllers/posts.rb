get '/posts/new' do
  if logged_in?
    erb :'posts/new'
  else
    redirect '/'
  end
end

post '/posts' do
  @tags = Tag.find_or_create_by(tag_name: params[:tag_name])
  @post = Post.create(params[:post])
  if @tags
    @post.tags << @tags
  end
  redirect '/'
end

get '/posts/:id/show' do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

