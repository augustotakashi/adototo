<div class="columns">
  <div class="column is-8 is-centered">

    <%= simple_form_for @pet, html: { multipart: true } do |f| %>
      <%= f.error_notification %>

        <div class="columns">

          <div class="field column is-9">
            <div class="control">
              <%= f.input :name , required: true, input_html: { class: "input"}, wrapper: false, label_html: { class:"label" } %>
            </div>
          </div>

          <div class="field column">
            <div class="control">
              <%= f.input :age, required: true, input_html: { class:"input", maxlength: 2  }, wrapper: false, label_html: { class:"label" } %>
            </div>
          </div>

        </div>

        <div class="field">
          <div class="control">
            <%= f.input :type, required: true, input_html: { class:"input" }, wrapper: false, label_html: { class:"label" } %>
          </div>
        </div>

        <div class="field">
          <div class="control">
            <%= f.input :description, required: true, input_html: { class:"textarea" }, wrapper: false, label_html: { class:"label" } %>
          </div>
        </div>

        <div class="columns">
          <div class="field column is-4">
            <div class="control">
              <label class="label">Brand</label>
              <div class="control has-icons-left">
                <span class="select">
                  <%= f.input_field :type, collection: Pet::TYPE, prompt: "Tipo do pet" %>
                </span>
                <span class="icon is-small is-left">
                  <i class="fa fa-tag"></i>
                </span>
              </div>
            </div>
           </div>

          <div class="field column is-4">
            <div class="control">
              <label class="label">Finish</label>
              <div class="control has-icons-left">
                <span class="select">
                  <%= f.input_field :size, collection: Pet::SIZE, prompt: "Tamanho" %>
                </span>
                <span class="icon is-small is-left">
                  <i class="fa fa-paint-brush"></i>
                </span>
              </div>
            </div>
           </div>

          <div class="field column is-4">
            <div class="control">
              <label class="label">Condition</label>
              <div class="control has-icons-left">
                <span class="select">
                  <%= f.input_field :SEX, collection: Pet::SEX, prompt: "Sexo" %>
                </span>
                <span class="icon is-small is-left">
                  <i class="fa fa-paint-brush"></i>
                </span>
              </div>
            </div>
           </div>
         </div>

        <div class="field">
          <div class="control">
            <label class="label">Add images</label>
              <div class="file">
              <label class="file-label">
                <%= f.input :image, as: :file, input_html: { class:"file-input instrument-image" }, label: false, wrapper: false %>
                  <span class="file-cta">
                    <span class="file-icon"><i class="fa fa-upload"></i></span>
                    <span class="file-label">Choose a file…</span>
                  </span>
              </label>
              </div>
            </div>
          </div>
          <output id="list"></output>
        <hr />

        <div class="field is-grouped">
          <div class="control">
            <%= f.button :submit, class: 'button is-warning' %>
            <%= link_to 'Cancel', instruments_path, class:'button is-light' %>
          </div>
        </div>

      <% end %>
  </div>
</div>
