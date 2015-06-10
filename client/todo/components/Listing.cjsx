class Todo.Components.Listing extends Todo.Components.Base

    mixins: [ Lanes.React.Router.State ]

    propTypes:
        summary: Lanes.PropTypes.State.isRequired

    dataObjects:
        summary: 'props'

    currentTasks: ->
        switch @getPathname()
            when '/active'    then @summary.active
            when '/completed' then @summary.completed
            else @summary.tasks

    render: ->
        <section id="main">
          <input id="toggle-all" type="checkbox" />
          <label htmlFor="toggle-all">Mark all as complete</label>
          <ul id="todo-list">
              {@currentTasks().map (task) ->
                  <Todo.Components.Task key={task.cid} task={task}/>}
          </ul>
        </section>
