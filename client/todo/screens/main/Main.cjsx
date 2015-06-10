class Todo.Screens.Main extends Todo.Screens.Base

    dataObjects:
        summary: -> Todo.Tasks # Was setup by Extension.setBootstrapData

    render: ->
        childProps = summary: @summary
        if @summary.tasks.length
            listing = <Lanes.React.Router.RouteHandler {...childProps}/>
            footer  = <Todo.Components.Footer  {...childProps} />

        <div className="learn-bar">
            <Todo.Components.Sidebar />
            <section id="todoapp">
                <Todo.Components.Header  {...childProps} />
                {listing}
                {footer}
            </section>
            <footer id="info">
                <p>
                    Double-click to edit a todo
                </p>
                <p>
                    Written by <a href="https://nathan.stitt.org">Nathan Stitt</a>
                </p>
                <p>
                    An independent implementation of
                    <a href="http://todomvc.com">TodoMVC</a>.
                    <a href="http://lanesframework.org/docs/todo-example-part-1/">HowTo writeup</a>
                </p>
            </footer>
        </div>
