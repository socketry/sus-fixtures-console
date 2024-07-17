# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2024, by Samuel Williams.

require 'sus/shared'
require 'console'
require 'console/capture'
require 'console/logger'

module Sus
	module Fixtures
		module Console
			CapturedLogger = Sus::Shared("captured logger") do
				let(:console_capture) {::Console::Capture.new}
				let(:console_logger) {::Console::Logger.new(console_capture, level: ::Console::Logger::DEBUG)}
				
				def around
					::Console.logger = console_logger
					super
				ensure
					::Console.logger = nil
				end
				
				def expect_console
					expect(console_capture)
				end
				
				def have_logged(**fields)
					have_value(have_keys(**fields))
				end
			end
		end
	end
end
