within TernaryTest.ExternalFunctions.ExternalC.Utilities;

function fromInteger
  extends Icons.ExternalFunction;
  input Integer x;
  output __Wolfram_Ternary y;

external "C"
    annotation(Include = "
int fromInteger(int x)
{
  return x;
}
");
end fromInteger;
