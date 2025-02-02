# Ada Vector Addition: Index Out of Bounds Bug

This repository demonstrates a common error in Ada programs involving array indexing. The code attempts to add two vectors but fails to check for compatibility in their lengths, leading to potential index out of bounds exceptions. This is a particularly subtle bug because the example case works correctly; however, if the lengths of the input vectors were to differ, the program would crash.

## Bug Description
The `Add_Vectors` function assumes that both input vectors `A` and `B` have the same range. It iterates through the index range of `A`, using the same index to access elements in `B`. If the ranges of `A` and `B` differ (i.e., they have different lengths), attempting to access `B(I)` with an index `I` outside of `B`'s range will cause a runtime error.

## Solution
The solution involves adding a check to ensure that both vectors have the same length before performing the addition.  This prevents accessing elements outside the bounds of either vector.
