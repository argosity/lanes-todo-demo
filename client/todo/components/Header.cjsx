class Todo.Components.Header extends Todo.Components.Base

    propTypes:
        summary: Lanes.PropTypes.State.isRequired

    onKeyDown: (ev) ->
        if "Enter" == ev.key
            task = new Todo.Models.Task(title: @state.title)
            # It would be more user-friendly to just attempt to save
            # which would run the validations internally before doing so.
            #
            # If we then added an invalid model to collection,
            # we could observe it's invalid state and display an "Task Invalid" message
            #
            # That's not how the TodoMVC Spec reads though
            # so that is left as an excercise for the reader (you!)
            #
            # Doing so would also have the nice side effect of simplifying
            # this entire block to be only:
            # @props.summary.tasks.create(title: @state.title)
            if task.isValid()
                @props.summary.tasks.add(task)
                task.save()
            @setState(title: "")
        if "Escape" == ev.key
            @setState(title: "")
        undefined

    onChange: (ev) ->
        @setState(title: ev.target.value)

    render: ->
        <header id="header">
            <h1>todos</h1>
            <input
                id="new-todo"
                placeholder="What needs to be done?"
                onChange={@onChange}
                onKeyDown={@onKeyDown}
                value={@state.title}
                autoFocus />
        </header>
