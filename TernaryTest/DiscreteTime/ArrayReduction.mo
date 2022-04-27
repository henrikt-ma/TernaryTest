within TernaryTest.DiscreteTime;

model ArrayReduction
  extends Icons.Example;

  function ternaryOf0to2
    input Integer n;
    output __Wolfram_Ternary t = if n < 1 then false elseif n > 1 then true else __Wolfram_unknown;
  end ternaryOf0to2;

  Integer i = integer(floor(3 * time));
  __Wolfram_Ternary x = ternaryOf0to2(mod(i, 3));
  __Wolfram_Ternary y = ternaryOf0to2(mod(div(i, 3), 3));
  __Wolfram_Ternary z = ternaryOf0to2(mod(div(i, 9), 3));
  __Wolfram_Ternary conjunction = min(x for x in {x, y, z}) "Reduction with min corresponds to conjunction";
  __Wolfram_Ternary disjunction = max(x for x in {x, y, z}) "Reduction with max corresponds to disjunction";
equation
  assert(conjunction == (x and y and z), "Wrong result.");
  assert(disjunction == (x or y or z), "Wrong result.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = text);
end ArrayReduction;
