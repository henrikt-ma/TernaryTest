within TernaryTest.Arrays.TernaryElements;

model ImplicitConversion
  extends Icons.Example;

  function f
    input Integer x;
    output Boolean[2] y = {x < 3, 7 < x};
    annotation(Inline = false);
  end f;

  constant Real rate(unit = "1/s") = 1.0;
  constant Real tHi(unit = "s") = 5.0;
  constant __Wolfram_Ternary[2] c = {true, false};
  __Wolfram_Ternary[2] z = {true, time < tHi};
  __Wolfram_Ternary[2] y = f(integer(rate * time));
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end ImplicitConversion;
