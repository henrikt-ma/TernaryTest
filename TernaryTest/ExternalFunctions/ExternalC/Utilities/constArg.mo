within TernaryTest.ExternalFunctions.ExternalC.Utilities;

function constArg
  extends Icons.ExternalFunction;
  input __Wolfram_Ternary x;
  output Integer y;
protected
  /* While waiting for resolution of
   * - https://github.com/modelica/ModelicaSpecification/issues/3427,
   * we avoid passing constant scalar expressions such as __Wolfram_Ternary(true) directly in the external function call
   */
  constant __Wolfram_Ternary ttrue = true;
  constant __Wolfram_Ternary tfalse = false;
external "C"
  y = constArg(__Wolfram_unknown, ttrue, tfalse, x)
    annotation(Include = "
int constArg(int r, int s, int t, int x)
{
  return 1000 * r + 100 * s + 10 * t + x;
}
");
end constArg;
