within TernaryTest.ExternalFunctions.ExternalC;

model ToInteger
  extends Icons.Example;

  function toInteger
    input __Wolfram_Ternary x;
    output Integer y;
  
    external "C"  annotation(Include = "
int toInteger(int x)
{
  return x;
}
");
  end toInteger;

  function next "Cycle between values of Ternary"
    input __Wolfram_Ternary x;
    output __Wolfram_Ternary y = if x == false then __Wolfram_unknown else x == __Wolfram_unknown;
  end next;

  __Wolfram_Ternary t(start = false, fixed = true);
  Integer i = toInteger(t);
equation
  when sample(0.0, 1.0) then
    t = next(pre(t));
  end when;
  annotation(TestCase(shoudPass = true), preferredView = text);
end ToInteger;
