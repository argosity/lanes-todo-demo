class Todo.Models.Task extends Todo.Models.Base

    props:
        id       : "integer"
        title    : {type: "string", allowNull: false}
        completed: {type: "boolean", default: false}

    validate: (attrs, options) ->
        attrs.title = attrs.title?.trim?()
        if _.isEmpty(attrs.title)
            return "title must be set"
