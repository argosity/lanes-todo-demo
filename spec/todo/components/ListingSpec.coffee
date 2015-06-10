describe "Todo.Components.Listing", ->

    beforeEach ->
        @summary = new Todo.Models.TasksSummary

    it "lists tasks", ->
        listing = LT.renderComponent(Todo.Components.Listing, summary: @summary)

        expect(_.dom(listing).qsa('li').length).toEqual(0)
        @summary.tasks.add(title: 'one')
        @summary.tasks.add(title: 'two')
        expect(_.dom(listing).qsa('li').length).toEqual(2)
