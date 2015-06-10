class Todo.Components.Task extends Todo.Components.Base

    propTypes:
        task: Lanes.PropTypes.Model.isRequired

    dataObjects:
        task: -> @props.task

    deleteTask: ->
        @task.destroy()

    setEditing: ->
        @setState(editText: @task.title, isEditing: true)

    updateEditText: (ev) ->
        @setState(editText: ev.target.value)

    onKeyDown: (ev) ->
        if "Enter" == ev.key
            @saveEdit()
            @setState(isEditing: false)
        if "Escape" == ev.key
            @setState(editText: @task.title, isEditing: false)

    onBlur: ->
        this.saveEdit()
        @setState(editText: null)

    saveEdit: ->
        @task.title = @state.editText
        if @task.isValid()
            @task.save()
            @setState(editText: @task.title, isEditing: false)
        else
            @deleteTask()


    componentDidUpdate: (prevProps, prevState) ->
        # we were not editing previously, but now are
        if !prevState.editText && @state.editText
            input = @refs.editField.getDOMNode()
            input.focus()
            input.setSelectionRange(input.value.length, input.value.length)

    toggleCompletion: ->
        @task.completed = !@task.completed
        @task.save()

    render: ->
        <li {... LC.classNames(editing:@state.isEditing)}>
            <div className="view">
                <input type="checkbox" className="toggle"
                    checked={@task.completed}
                    onChange={@toggleCompletion} />
                <label onDoubleClick={@setEditing}>{@task.title}</label>
                <LC.RequestSpinner active={@state.isRequesting}/>
                <button className="destroy" onClick={@deleteTask}></button>

            </div>
            <input className="edit"
                value={@state.editText}
                onChange={@updateEditText}
                onBlur={@onBlur}
                onKeyDown={@onKeyDown}
                ref="editField"/>
        </li>
