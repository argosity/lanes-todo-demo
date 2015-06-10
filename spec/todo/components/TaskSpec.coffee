describe "Todo.Components.Task", ->
    beforeEach ->
        @task = new Todo.Models.Task(title: 'Testing, One, Two, Three')

    it "renders a task", ->
        task = LT.renderComponent(Todo.Components.Task, task: @task)
        expect(task.getDOMNode().textContent).toMatch(@task.title)

    it "starts editing on double click", ->
        task = LT.renderComponent(Todo.Components.Task, task: @task)
        expect(_.dom(task).hasClass('editing')).toBe(false)
        _.dom(task, "label").doubleClick()
        expect(_.dom(task).hasClass('editing')).toBe(true)
