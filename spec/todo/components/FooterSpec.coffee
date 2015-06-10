describe "Todo.Components.Footer", ->
    beforeEach ->
        @summary = new Todo.Models.TasksSummary

    it "displays counts", ->
        element = LT.renderComponent(Todo.Components.Footer, summary: @summary)
        expect(_.dom(element).text).toMatch(/Clear completed \(0\)/)
        task = new Todo.Models.Task()
        @summary.tasks.add(name: "Read more", completed: true)
        expect(@summary.completed.length).toEqual(1)
        expect(_.dom(element).text).toMatch(/Clear completed \(1\)/)
