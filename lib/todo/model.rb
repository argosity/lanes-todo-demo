module Todo

    # All models in Todo will inherit from
    # this common base class.
    class Model < Lanes::Model

        self.abstract_class = true

    end

    autoload :Task, "todo/models/task"
end
