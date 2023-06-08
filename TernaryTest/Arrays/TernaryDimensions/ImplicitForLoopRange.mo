within TernaryTest.Arrays.TernaryDimensions;

model ImplicitForLoopRange
  extends Icons.Example;
  Boolean[__Wolfram_Ternary] b;
  Integer k;
equation
  for i loop
    b[i] = i > (time > 5.0);
  end for;
algorithm
  k := 0;
  for i loop
    k := 10 * k + (if b[i] < __Wolfram_unknown then 1 elseif b[i] > __Wolfram_unknown then 9 else 5);
  end for;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end ImplicitForLoopRange;
