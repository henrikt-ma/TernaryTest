within TernaryTest.ConstantEvaluation;

model NoConversionFromTernary
  extends Icons.NegativeExample;
  constant __Wolfram_Ternary u = __Wolfram_Ternary(__Wolfram_unknown);
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = false), preferredView = text);
end NoConversionFromTernary;
