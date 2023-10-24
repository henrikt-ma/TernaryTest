within TernaryTest.ExternalFunctions.ExternalC.Utilities;

function toInteger
  extends Icons.ExternalFunction;
  input __Wolfram_Ternary x;
  output Integer y;

external "C"
    annotation(Include = "
int toInteger(int x)
{
  return x;
}
");
end toInteger;
