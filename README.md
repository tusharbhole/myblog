hello tushar
<!-- <p id="notice"><%= notice %></p> -->

<!-- <table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Description</th>
      <th colspan="3">Actions</th>
    </tr>
  </thead>

  <tbody>
    <% @articals.each do |artical| %>
      <tr>
        <td><%= artical.title %></td>
        <td><%= artical.description %></td>
        <td><%= link_to 'Show', artical %></td>
        <td><%= link_to 'Edit', edit_artical_path(artical) %></td>
        <td><%= link_to 'Destroy', artical, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'Create New Artical', new_artical_path %><br><br>
<%= link_to 'Home page', root_path %>
 -->

<!--  <%= form_with(model: @artical, local: true) do |form| %>
  <% if @artical.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(artical.errors.count, "error") %> prohibited this artical from being saved:</h2>

      <ul>
        <% artical.errors.full_messages.each do |message| %>
          <li><%= message %></li>
        <% end %>
      </ul>
    </div>
  <% end %>

  <div class="field">
    <%= form.label :title %>
    <%= form.text_field :title %>
  </div>

  <div class="field">
    <%= form.label :description %>
    <%= form.text_area :description %>
  </div>

  <div class="actions">
    <%= form.submit %>
  </div>
<% end %>
 -->