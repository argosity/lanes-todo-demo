describe "Todo.Components.Header", ->

    it "can be rendered", ->
        component = LT.renderComponent(Todo.Components.Header)
        expect(component.getDOMNode().textContent).toMatch("Header")
