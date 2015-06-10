##=require ./screens/main

# This is the client-side version of Todo::Extension
class Todo.Extension extends Lanes.Extensions.Base

    # must match the server-side identier in config/screens.rb and lib/todo/extension.rb
    identifier: "todo"

    # This method is called when the extension is registered
    # Not all of Lanes will be available yet
    onRegistered: Lanes.emptyFn

    # This method is called after Lanes is completly loaded
    # and all extensions are registered
    onInitialized: Lanes.emptyFn

    # Data that is provided by Todo::Extension#client_bootstrap_data
    # in lib/todo/extension.rb is passed to this method
    setBootstrapData: (data) ->
        Todo.Tasks = new Todo.Models.TasksSummary(data.todos)

    # All extenensions have been given their data and Lanes has completed startup
    onAvailable: Lanes.emptyFn

    # Routes that should be established go here
    getRoutes: ->
        Todo.Routes()

    # The root component that should be shown for this extension.
    # Will not be called if a different extension has included this one and it is the
    # "controlling" extension
    rootComponent: (viewport) ->
        # render Todo.Screens.Main by default.  If this is changed the
        # ##=require ./screens/main at the top of file must also be updated
        # to ensure that the correct screen's definition will be available at boot
        Todo.Screens.Main
