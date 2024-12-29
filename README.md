# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in asynchronous Dart programming: insufficient exception handling. The `fetchData` function makes a network request; however, error handling is inadequate, hindering debugging and making it hard to determine the root cause of failures.

The `bug.dart` file shows the problematic code.  The `bugSolution.dart` file provides an improved solution.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.
3. Observe the generic error message when the API request fails. Note that the exact nature of the failure isn't readily apparent.

## Solution

The solution involves more robust exception handling.  The improved version provides more context, potentially including the stack trace, for easier debugging.