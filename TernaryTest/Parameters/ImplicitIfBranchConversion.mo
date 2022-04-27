within TernaryTest.Parameters;

model ImplicitIfBranchConversion
  extends Icons.Example;
  parameter Boolean b = true;
  parameter Boolean c = false;
  parameter __Wolfram_Ternary p = if b then c else __Wolfram_unknown;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end ImplicitIfBranchConversion;
