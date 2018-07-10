    module.exports = '<!DOCTYPE html>
    <html>
    <head>
      <title><%= title %></title>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" media="all" href="public/stylesheets/normalize.css" />
      <link rel="stylesheet" media="all" href="<%= css %>" />
    </head>
    <body>
      <div class="container">
        <div class="page">

          <div class="header">
            <% if (hasTitle) { %>
              <% var section = sections.shift(); %>
              <%= section.docsHtml %>
              <% if (!(/^\s*$/).test(section.codeText)) { %>
                <%= section.codeHtml %>
              <% } %>
            <% } else { %>
              <h1><%= title %></h1>
            <% } %>

            <% if (sources.length > 1) { %>
              <div class="toc">
                <h3>Table of Contents</h3>
                <ol>
                  <% for (var i=0, l = sources.length; i < l; i++) { %>
                    <% var source = sources[i]; %>
                    <li>
                      <a class="source" href="<%= destination(source) %>">
                        <%= path.basename(source) %>
                      </a>
                    </li>
                  <% } %>
                </ol>
              </div>
            <% } %>
          </div>

          <% for (var i = 0, l = sections.length; i<l; i++) { %>
            <% var section = sections[i]; %>
            <%= section.docsHtml %>
            <% if (!(/^\s*$/).test(section.codeText)) { %>
              <%= section.codeHtml %>
            <% } %>
          <% } %>
          <div class="fleur">h</div>
        </div>
      </div>
    </body>
    </html>'