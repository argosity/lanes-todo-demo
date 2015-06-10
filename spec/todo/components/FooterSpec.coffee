describe "Todo.Components.Footer", ->

    it "can be rendered", ->
        component = LT.renderComponent(Todo.Components.Footer)
        expect(component.getDOMNode().textContent).toMatch("Footer")
