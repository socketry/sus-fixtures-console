# Getting Started

This guide explains how to use the `Sus::Fixtures::Console` gem to capture console logging output.

## Installation

Add the gem to your project:

``` bash
$ bundle add sus-fixtures-console
```

## Usage

Here is a basic example of a test, that captures the log output:

``` ruby
require 'sus/fixtures/console/captured_logger'

describe Sus::Fixtures::Console::CapturedLogger do
	include_context Sus::Fixtures::Console::CapturedLogger
	
	it "should capture output" do
		Console.logger.debug("Hello, World!")
		
		expect(capture.last).to have_keys(
			severity: be == :debug,
			subject: be == "Hello, World!"
		)
	end
end
```
