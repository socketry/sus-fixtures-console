# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2024, by Samuel Williams.

require "sus/fixtures/console"

describe Sus::Fixtures::Console::VERSION do
	it "is a version string" do
		expect(subject).to be =~ /\d+\.\d+\.\d+/
	end
end
