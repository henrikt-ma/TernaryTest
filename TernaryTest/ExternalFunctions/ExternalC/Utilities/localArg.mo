within TernaryTest.ExternalFunctions.ExternalC.Utilities;

function localArg
  extends Icons.ExternalFunction;
  input __Wolfram_Ternary x;
  output Integer y;
protected
  __Wolfram_Ternary tunknown = __Wolfram_unknown;
  __Wolfram_Ternary ttrue = true;
  __Wolfram_Ternary tfalse = false;
external "C"
  y = constArg(tunknown, ttrue, tfalse, x)
    annotation(Include = "
int constArg(int* r, int* s, int* t, int x)
{
  return 1000 * *r + 100 * *s + 10 * *t + x;
}
");
end localArg;
