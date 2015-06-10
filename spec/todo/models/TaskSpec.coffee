describe "Todo.Models.Task", ->

    it "can be instantiated", ->
        model = new Todo.Models.Task()
        expect(model).toEqual(jasmine.any(Todo.Models.Task))
