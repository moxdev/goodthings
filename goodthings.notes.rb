 helper

 # Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.email, class: "gravatar")
  end

home.erb
  <li><%= link_to "Profile", profile_show_path(current_user) %></li>

profile.erb
<% provide(:title, current_user) %>
<div class="row">
    <aside class="col-md-4">
        <section class="user_info">
            <h1>
                <%= gravatar_for current_user %>
                <%= current_user.email %>
                <br />
                <%= button_to "Edit Profile", edit_user_registration_path, :method => :get %>
            </h1>
        </section>
    </aside>
<h4>Users#profile</h4>
<p>Find me in app/views/users/profile.html.erb</p>
</div>
<!-- /.row -->