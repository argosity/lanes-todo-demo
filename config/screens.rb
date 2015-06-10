# An example of how to define a screen group
# Lanes::Screen.define_group 'todo-screens' do | group |
#     group.title       = "Todo Screens"
#     group.description = "Screens relating to Todo"
#     group.icon        = "heart"
# end

Lanes::Screen.for_extension 'Todo' do | screens |
    screens.define "main" do | screen |
        screen.title       = "Main"
        screen.description = ""
        screen.icon        = ""
        screen.group_id    = ""
        screen.model_class = ""
        screen.view_class  = "Main"
        screen.js          = "main.js"
        screen.css         = "main.css"
    end

end
