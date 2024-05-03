# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2024, by Samuel Williams.

require 'sus/fixtures/console/captured_logger'

describe Sus::Fixtures::Console::CapturedLogger do
	include_context Sus::Fixtures::Console::CapturedLogger
	
	it "should capture output" do
		Console.debug("Hello, World!")
		
		expect(capture.last).to have_keys(
			severity: be == :debug,
			subject: be == "Hello, World!"
		)
	end
end
