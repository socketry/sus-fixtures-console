# Sus::Fixtures::Console

Provides a convenient fixture for capturing console logging.

[![Development Status](https://github.com/socketry/sus-fixtures-console/workflows/Test/badge.svg)](https://github.com/socketry/sus-fixtures-console/actions?workflow=Test)

## Installation

``` bash
$ bundle add sus-fixtures-console
```

## Usage

``` ruby
include_context Sus::Fixtures::Console::CapturedLogger

it "should capture output" do
	Console.debug("Hello, World!")
	
	expect(capture.last).to have_keys(
		severity: be == :debug,
		subject: be == "Hello, World!"
	)
end
```
