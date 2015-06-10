Route = Lanes.React.Router.Route

Todo.Routes = ->
    <Route key="todo" name="root" handler={Lanes.Todo.Screens.Main}>
      <Lanes.React.Router.Redirect from="/" to="all" />
      <Route path="/all" name="all" handler={Lanes.Todo.Components.Listing}/>
      <Route path="/completed" name="completed" handler={Lanes.Todo.Components.Listing}/>
      <Route path="/active" name="active" handler={Lanes.Todo.Components.Listing}/>
    </Route>
