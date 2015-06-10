describe "Todo.Components.Task", ->

    it "can be rendered", ->
        component = LT.renderComponent(Todo.Components.Task)
        expect(component.getDOMNode().textContent).toMatch("Task")
