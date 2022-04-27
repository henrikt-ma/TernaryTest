within TernaryTest.ConstantEvaluation;

model NoConversionToBoolean
  extends Icons.NegativeExample;
  constant Boolean b = __Wolfram_Ternary(false);
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = false), preferredView = text);
end NoConversionToBoolean;
