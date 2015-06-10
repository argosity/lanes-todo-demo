class Todo.Models.TasksSummary extends Lanes.Models.State

    session:
        tasks:
            type: "collection"

    derived:
        completed:
            deps: ['tasks']
            fn: -> this.tasks.subcollection(where: {completed: true})
        active:
            deps: ['tasks']
            fn: -> this.tasks.subcollection(where: {completed: false})

    constructor: (task_data = []) ->
        tasks = new Todo.Models.Task.Collection(task_data, {comparator: 'created_at'})
        super(tasks: tasks)
        this.listenTo(@active,    'add remove', this.triggerChange)
        this.listenTo(@completed, 'add remove', this.triggerChange)
        this.listenTo(tasks,
            'change:completed change:title add remove',
            this.triggerChange )

    triggerChange: ->
        this.trigger('change')

    isComplete: ->
        @tasks.length == @completed.length
