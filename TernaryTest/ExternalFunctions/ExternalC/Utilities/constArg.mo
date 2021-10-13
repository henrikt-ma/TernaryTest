within TernaryTest.ExternalFunctions.ExternalC.Utilities;

function constArg
  extends Icons.ExternalFunction;
  input __Wolfram_Ternary x;
  output Integer y;

  external "C" y = constArg(__Wolfram_unknown, __Wolfram_Ternary(true), __Wolfram_Ternary(false), x) annotation(Include = "
int constArg(int r, int s, int t, int x)
{
  return 1000 * r + 100 * s + 10 * t + x;
}
");
end constArg;
