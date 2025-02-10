# Objective-C KVO and Weak References Bug

This repository demonstrates a subtle bug related to Key-Value Observing (KVO) and weak references in Objective-C.  The bug arises from the potential for the observed object to be deallocated while the observer is still registered for KVO.

## Bug Description

The bug occurs when a weak reference is used to observe an object. If the observed object is deallocated before the observer removes its KVO observation, a crash or unexpected behavior can occur.

## Solution

The solution involves ensuring that the KVO observation is removed before the observed object can be deallocated.  This is typically done in the `dealloc` method of the observer or by carefully managing the lifecycle of the observer and observed objects.

## How to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the application.  The original code will likely crash.
4. Uncomment the solution code in `bugSolution.m` to see the corrected behavior.
