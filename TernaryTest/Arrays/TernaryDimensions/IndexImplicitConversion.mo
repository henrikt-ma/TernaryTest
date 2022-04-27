within TernaryTest.Arrays.TernaryDimensions;

model IndexImplicitConversion
  extends Icons.Example;
  Boolean[__Wolfram_Ternary] b;
  Boolean y = b[true];
equation
  for i loop
    b[i] = i > (time > 5.0);
  end for;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end IndexImplicitConversion;
