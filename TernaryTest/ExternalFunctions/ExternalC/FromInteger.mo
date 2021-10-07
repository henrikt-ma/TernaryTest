within TernaryTest.ExternalFunctions.ExternalC;

model FromInteger
  extends Icons.Example;

  function fromInteger
    input Integer x;
    output __Wolfram_Ternary y;
  
    external "C"  annotation(Include = "
int toInteger(int x)
{
  return x;
}
");
  end fromInteger;

  function next "Cycle between values of Ternary"
    input __Wolfram_Ternary x;
    output __Wolfram_Ternary y = if x == false then __Wolfram_unknown else x == __Wolfram_unknown;
  end next;

  Integer i(start = -5, fixed = true);
  __Wolfram_Ternary t = fromInteger(i);
equation
  when sample(0.0, 1.0) then
    i = pre(i) + 1;
  end when;
  annotation(TestCase(shoudPass = true), preferredView = text);
end FromInteger;
