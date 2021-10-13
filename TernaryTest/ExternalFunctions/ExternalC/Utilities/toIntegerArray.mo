within TernaryTest.ExternalFunctions.ExternalC.Utilities;

function toIntegerArray
  extends Icons.ExternalFunction;
  input __Wolfram_Ternary[3] x;
  output Integer y;

  external "C"  annotation(Include = "
int toIntegerArray(const int* x, size_t xLen)
{
  int y = 0;
  int w = 1;
  const int* xEnd = x + xLen;
  for (; x != xEnd; ++x, w *= 10) {
    y += w * *x;
  }
  return y;
}
");
end toIntegerArray;
