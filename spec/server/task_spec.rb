require_relative 'spec_helpers'

class TaskSpec < Todo::TestCase

    it "can be instantiated" do
        model = Task.new
        model.must_be_instance_of(Task)
    end

end
