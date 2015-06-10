class Todo.Components.Footer extends Todo.Components.Base

    propTypes:
        summary: Lanes.PropTypes.State.isRequired

    dataObjects:
        summary: 'props'

    clearCompleted: ->
        if @summary.completed.length
            @summary.completed.destroyAll()

    render: ->
        count = @summary.tasks.length
        items = _.pluralize('item', count)
        <footer id="footer">
            <span id="todo-count"><strong>{count}</strong> {items}</span>
            <ul id="filters">
                <li>
                    <Lanes.React.Router.Link activeClassName="selected" to="all">
                        All
                    </Lanes.React.Router.Link>
                </li>
                <li>
                    <Lanes.React.Router.Link activeClassName="selected" to="active">
                        Active
                    </Lanes.React.Router.Link>
                </li>
                <li>
                    <Lanes.React.Router.Link activeClassName="selected" to="completed">
                        Completed
                    </Lanes.React.Router.Link>
                </li>
            </ul>
            <button id="clear-completed" onClick={@clearCompleted}>
                Clear completed ({@summary.completed.length})
            </button>
        </footer>
