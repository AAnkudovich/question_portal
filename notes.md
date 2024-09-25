<%= link_to "Ask a new question", new_question_path, class: "btn btn-primary" %>
        <% if @questions.any? %>
          <h2>Recent Questions</h2>
          <ul class="list-group">
            <% @questions.each do |question| %>
              <li class="list-group-item">
                <%= link_to question.title, question_path(question) %>
                <small class="text-muted">asked <%= time_ago_in_words(question.created_at) %> ago</small>
              </li>
            <% end %>
          </ul>
        <% else %>
          <p>No questions have been asked yet</p>
        <% end %>
