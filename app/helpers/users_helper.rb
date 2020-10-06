module UsersHelper
  <%= form_tag("/create", method: "get") do %>
    <%= username_tag(:q, "username") %>
    <%= text_field_tag(:q) %>
    <%= email_tag(:q, "e-mail") %>
    <%= text_field_tag(:q) %>
    <%= password_tag(:q) %>
    <%= text_field_tag(:q) %>
    <%= submit_tag("Create") %>
  <%= end %>
end
