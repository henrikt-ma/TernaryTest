within TernaryTest.Arrays.TernaryDimensions;

model ConstructionWithIterator
  extends Icons.Example;
  Boolean[__Wolfram_Ternary] b = array(i > (time > 5.0) for i in __Wolfram_Ternary);
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end ConstructionWithIterator;
