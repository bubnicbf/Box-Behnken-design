# Box-Behnken-design
returns a set of sample argument values to be used to analyze the behavior of a function

##In statistics, Box–Behnken designs are experimental designs for response surface methodology, devised by George E. P. Box and Donald Behnken in 1960, to achieve the following goals:
  - Each factor, or independent variable, is placed at one of three equally spaced values, usually coded as -1, 0, +1. (At least three levels are needed for the following goal.)
  - The design should be sufficient to fit a quadratic model, that is, one containing squared terms and products of two factors.
  - The ratio of the number of experimental points to the number of coefficients in the quadratic model should be reasonable (in fact, their designs kept it in the range of 1.5 to 2.6).
  - The estimation variance should more or less depend only on the distance from the centre (this is achieved exactly for the designs with 4 and 7 factors), and should not vary too much inside the smallest (hyper)cube containing the experimental points.

The design with 7 factors was found first while looking for a design having the desired property concerning estimation variance, and then similar designs were found for other numbers of factors.

Each design can be thought of as a combination of a two-level (full or fractional) factorial design with an incomplete block design. In each block, a certain number of factors are put through all combinations for the factorial design, while the other factors are kept at the central values. For instance, the Box–Behnken design for 3 factors involves three blocks, in each of which 2 factors are varied through the 4 possible combinations of high and low. It is necessary to include centre points as well (in which all factors are at their central values).

