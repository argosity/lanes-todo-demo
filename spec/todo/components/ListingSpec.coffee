describe "Todo.Components.Listing", ->

    it "can be rendered", ->
        component = LT.renderComponent(Todo.Components.Listing)
        expect(component.getDOMNode().textContent).toMatch("Listing")
