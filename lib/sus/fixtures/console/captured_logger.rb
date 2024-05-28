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
				let(:capture) {::Console::Capture.new}
				let(:logger) {::Console::Logger.new(capture, level: ::Console::Logger::DEBUG)}
				
				def around
					::Console.logger = logger
					super
				ensure
					::Console.logger = nil
				end
			end
		end
	end
end
