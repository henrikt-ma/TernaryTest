within TernaryTest.ConstantEvaluation;

model Relations
  extends Icons.Example;
  constant __Wolfram_Ternary t = true;
  constant __Wolfram_Ternary f = false;
  constant __Wolfram_Ternary u = __Wolfram_unknown;
equation
  assert(not (f < f), "Wrong order.");
  assert(f < u, "Wrong order.");
  assert(f < t, "Wrong order.");
  assert(not (u < f), "Wrong order.");
  assert(not (u < u), "Wrong order.");
  assert(u < t, "Wrong order.");
  assert(not (t < f), "Wrong order.");
  assert(not (t < u), "Wrong order.");
  assert(not (t < t), "Wrong order.");
  assert(f <= f, "Wrong order");
  assert(f <= u, "Wrong order");
  assert(f <= t, "Wrong order");
  assert(not (u <= f), "Wrong order");
  assert(u <= u, "Wrong order");
  assert(u <= t, "Wrong order");
  assert(not (t <= f), "Wrong order");
  assert(not (t <= u), "Wrong order");
  assert(t <= t, "Wrong order");
  assert(not (f > f), "Wrong order.");
  assert(not (f > u), "Wrong order.");
  assert(not (f > t), "Wrong order.");
  assert(u > f, "Wrong order.");
  assert(not (u > u), "Wrong order.");
  assert(not (u > t), "Wrong order.");
  assert(t > f, "Wrong order.");
  assert(t > u, "Wrong order.");
  assert(not (t > t), "Wrong order.");
  assert(f >= f, "Wrong order.");
  assert(not (f >= u), "Wrong order.");
  assert(not (f >= t), "Wrong order.");
  assert(u >= f, "Wrong order.");
  assert(u >= u, "Wrong order.");
  assert(not (u >= t), "Wrong order.");
  assert(t >= f, "Wrong order.");
  assert(t >= u, "Wrong order.");
  assert(t >= t, "Wrong order.");
  assert(f == f, "Wrong equal.");
  assert(not (f == u), "Wrong equal.");
  assert(not (f == t), "Wrong equal.");
  assert(not (u == f), "Wrong equal.");
  assert(u == u, "Wrong equal.");
  assert(not (u == t), "Wrong equal.");
  assert(not (t == f), "Wrong equal.");
  assert(not (t == u), "Wrong equal.");
  assert(t == t, "Wrong equal.");
  assert(not (f <> f), "Wrong not equal.");
  assert(f <> u, "Wrong not equal.");
  assert(f <> t, "Wrong not equal.");
  assert(u <> f, "Wrong not equal.");
  assert(not (u <> u), "Wrong not equal.");
  assert(u <> t, "Wrong not equal.");
  assert(t <> f, "Wrong not equal.");
  assert(t <> u, "Wrong not equal.");
  assert(not (t <> t), "Wrong not equal.");
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end Relations;
