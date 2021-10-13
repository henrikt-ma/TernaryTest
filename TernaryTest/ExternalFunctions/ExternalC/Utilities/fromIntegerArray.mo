within TernaryTest.ExternalFunctions.ExternalC.Utilities;

function fromIntegerArray
  extends Icons.ExternalFunction;
  input Integer x;
  output __Wolfram_Ternary[3] y;

  external "C"  annotation(Include = "
void fromIntegerArray(int x, int* y, size_t yLen)
{
  y[0] = -1;
  y[1] = x;
  y[2] = 1;
}
");
end fromIntegerArray;
