within TernaryTest.ExternalFunctions.ExternalC;

model ConstantArgument
  extends Icons.Example;
  Integer i(start = Utilities.constArg(false), fixed = true);
equation
  when time > 0.5 then
    i = Utilities.constArg(true);
  end when;
  annotation(TestCase(shoudPass = true), preferredView = text);
end ConstantArgument;
