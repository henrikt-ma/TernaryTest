within TernaryTest.ConstantEvaluation;

model EnumeratorUnknown
  extends Icons.Example;
  type E = enumeration(one, two, __Wolfram_unknown); /* Warning expected for deprecated use of reserved name. */
  constant E e = E.__Wolfram_unknown; /* No need for another warning here. */
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end EnumeratorUnknown;
