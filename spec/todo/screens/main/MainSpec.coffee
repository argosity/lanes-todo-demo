describe "Todo.Screens.Main", ->

    afterEach ->
        Todo.Tasks.tasks.reset()

    it "renders subviews", ->
        Todo.Tasks.tasks.reset()

        screen = LT.renderComponent(Todo.Screens.Main, {},
            routeHandler: Todo.Components.Listing
        )

        expect(
            LT.Utils.scryRenderedComponentsWithType(screen, Todo.Components.Header).length
        ).toEqual(1)
        expect(
            LT.Utils.scryRenderedComponentsWithType(screen, Todo.Components.Footer).length
        ).toEqual(0)
        expect(
            LT.Utils.scryRenderedComponentsWithType(screen, Todo.Components.Listing).length
        ).toEqual(0)

        Todo.Tasks.tasks.add(title: 'testing')

        expect(
            LT.Utils.scryRenderedComponentsWithType(screen, Todo.Components.Footer).length
        ).toEqual(1)

        expect(
            LT.Utils.scryRenderedComponentsWithType(screen, Todo.Components.Listing).length
        ).toEqual(1)
