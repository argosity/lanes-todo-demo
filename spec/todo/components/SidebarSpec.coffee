describe "Todo.Components.Sidebar", ->

    it "can be rendered", ->
        element = LT.renderComponent(Todo.Components.Sidebar)
        expect(_.dom(element).text).toMatch("Lanes Framework")
