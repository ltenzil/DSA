# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../lib/print_middleware', __FILE__)
require ::File.expand_path('../lib/logging_middleware', __FILE__)
require ::File.expand_path('../lib/frack', __FILE__)

use PrintMiddleware
use LoggingMiddleware

run Application.new 
