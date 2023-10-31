within TernaryTest.Arrays.TernaryDimensions;

model IndexImplicitConversion
  extends Icons.Example;
  Boolean[__Wolfram_Ternary] b;
  Boolean y = b[true];
equation
  for i loop
    b[i] = i == ((if time > 1.0 then __Wolfram_unknown else false) or time > 2);
  end for;
  annotation(experiment(StopTime = 3.0), TestCase(shoulDpass = true), preferredView = "text");
end IndexImplicitConversion;
