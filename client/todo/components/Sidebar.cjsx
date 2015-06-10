class Todo.Components.Sidebar extends Todo.Components.Base

    render: ->
      <aside className="learn">
          <header>
            <h3>Lanes Framework</h3>
            <span className="source-links">
              <a href="http://lanesframework.org/docs/todo-example-part-1/">
                  HowTo
              </a> :: <a href="http://todo.lanesframework.org/">
                  Demo
              </a> :: <a href="https://github.com/argosity/lanes-todo-demo">
                  Source
              </a>
            </span>
          </header>
          <hr/>
          <blockquote className="quote speech-bubble">
            <p>
              Lanes is a framework that gives structure to web applications
               by providing tight front and backend integration.
               It provideds real-time access between the back-end database
               and the user interface along with a set of rapid development tools.
            </p>
            <footer>
              <a href="http://lanesframework.org/">LanesFramework.org</a>
            </footer>
          </blockquote>
        <footer>
          <hr/>
          <em>
            If you have other helpful links to share,
            or find any of the links above no longer work,
            please <a href="https://github.com/argosity/lanes/issues">let us know</a>.
          </em>
        </footer>
      </aside>
