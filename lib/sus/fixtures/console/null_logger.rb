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
			NullLogger = Sus::Shared("null logger") do
				let(:logger) {::Console::Logger.new(::Console::Output::Null.new)}
				
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
