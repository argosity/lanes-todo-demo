require_relative '../../lib/Todo'
require 'lanes/spec_helper'

module Todo

    # Add more helper methods to be used by all tests here...

    class TestCase < Lanes::TestCase
        include Todo
    end

    class ApiTestCase < Lanes::ApiTestCase
        include Todo
    end

end
