# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code and its solution. The original code lacks proper exception handling in its asynchronous function, which can lead to unexpected application behavior. The solution provides a more robust way to handle exceptions and gracefully manage errors.

## Bug

The `fetchData` function attempts to fetch data from an API. While it includes a `try-catch` block, the exception handling is insufficient.  The `catch` block merely prints the error, which is not ideal for production applications. The rethrow helps but doesn't provide recovery or user feedback. 

## Solution

The improved `fetchData` function in `bugSolution.dart` introduces more effective exception handling. It handles potential HTTP errors and other exceptions more gracefully, providing more informative error messages and preventing application crashes.