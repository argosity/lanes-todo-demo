describe "Todo.Components.Sidebar", ->

    it "can be rendered", ->
        component = LT.renderComponent(Todo.Components.Sidebar)
        expect(component.getDOMNode().textContent).toMatch("Sidebar")
