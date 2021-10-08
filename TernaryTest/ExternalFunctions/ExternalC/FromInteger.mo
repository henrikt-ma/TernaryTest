within TernaryTest.ExternalFunctions.ExternalC;

model FromInteger
  extends Icons.Example;
  Integer i(start = -5, fixed = true);
  __Wolfram_Ternary t = Utilities.fromInteger(i);
equation
  when sample(0.0, 1.0) then
    i = pre(i) + 1;
  end when;
  annotation(TestCase(shoudPass = true), preferredView = text);
end FromInteger;
