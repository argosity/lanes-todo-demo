describe "Todo.Screens.Main", ->

    it "can be rendered", ->
        screen = LT.renderComponent(Todo.Screens.Main)
        expect(screen.getDOMNode().textContent).toMatch("Hello")
