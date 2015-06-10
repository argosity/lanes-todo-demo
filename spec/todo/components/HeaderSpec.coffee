describe "Todo.Components.Header", ->

    beforeEach ->
        @summary = new Todo.Models.TasksSummary
        @header = LT.renderComponent(Todo.Components.Header, summary: @summary)

    it "clears input on esc", ->
        input = _.dom(@header, '#new-todo')
        input.change(target: {value: 'a todo task'})
        expect(input.value).toEqual('a todo task')
        input.keyDown({key: "Escape"})
        expect(input.value).toEqual('')


    it "creates a record on enter", ->
        expect(@summary.tasks.length).toEqual(0)
        input = _.dom(@header, '#new-todo')
        input.change(target: {value: 'a todo task'})
        input.keyDown(key: "Enter")
        expect(input.value).toEqual('')
        expect(@summary.tasks.length).toEqual(1)
