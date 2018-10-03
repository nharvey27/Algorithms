Test.assertSimilar(stray([1, 1, 2]), 2)

Test.assertSimilar(stray([17, 17, 3, 17, 17, 17, 17]), 3)

Test.assertSimilar(stray([8, 1, 1, 1, 1, 1, 1]), 8)

Test.assertSimilar(stray([1, 1, 1, 1, 1, 1, 0]), 0)

Test.assertSimilar(stray([0, 0, 0, 7, 0, 0, 0]), 7)

Test.assertSimilar(stray([-21, -21, -21, -21, -6, -21, -21]), -6)

var strayNumber = randomInt(-10000, 10000)
Test.assertSimilar(stray(validRandomArray(101, strayNumber)), strayNumber)

var strayNumber = randomInt(-10000, 10000)
Test.assertSimilar(stray(validRandomArray(15273, strayNumber)), strayNumber)
