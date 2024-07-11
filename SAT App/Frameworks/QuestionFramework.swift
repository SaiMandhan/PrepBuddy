//
//  QuestionFramework.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/13/21.
//
 
import Foundation
 
struct Question: Hashable{
    let questionText: String
    let questionAnswers: [String]
    let correctAnswer: Int
    let type: String
    let explanation: String

    
    static let allQuestions : [Question] = [

    
        Question(questionText: "5x = 7x \n In the equation above, how many values of x are viable solutions?",
                 questionAnswers: ["0","1","2","3"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "In this scenario, x can only be equal to 0 to satisfy the equation, so the answer is 1."),


        Question(questionText: "Given the equations y = 2x+3 and 3y = kx+9, what value of k makes the lines parallel?",
                 questionAnswers: ["3","2","6","9"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "The first equation must be multiplied by 3 to get 3y = 6x + 9. For two lines to be parallel, the slope (y over x) must be equal, which means that k has to equal 6."),
    

        Question(questionText: "If cos 60° = x, then what is sin 30° in terms of x?",
                 questionAnswers: ["x","2x","x^2","90-x"],
                 correctAnswer: 0,
                 type:"Non-Calculator",
                 explanation: "Cos 60 is equal to ½, which is x. Sin 30 is also ½, meaning it is also x. Cos 60 = sin 30, and they both equal x, so the answer is x"),
         Question(questionText: "If a right triangle with a hypotenuse of length of 5 inches has another side with a length 3 inches, what is the length of the unknown side in inches?",
                 questionAnswers: ["4.3","4","3","4.7"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "To find the side of a missing side of a triangle given 2 sides, you have to use the Pythagorean theorem. If the missing side is x, then 3^2 + x^2 = 5^2. You then solve for x, which is 4."),
    

        Question(questionText: "If there are 5 white blocks and 5 red blocks in a bag, what is the probability that a white block is chosen?",
                 questionAnswers: ["1/10","1/2","5/9","1/5"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "There is a 5/10 probability that a white block will be selected since there are 10 total blocks in the bag, 5 of which are white. Hence, the probability that a white block will be selected at random is 1/2."),
    

       Question(questionText: "If there 5 white blocks and 5 red blocks in a bag and one red block is picked, what is the probability that the next block that is picked will be red?",
                 questionAnswers: ["1/2 ","5/9","4/9","1"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "Once a red block is taken out, there are 4 red blocks and 9 total blocks left. The chances of a red block being picked out of that is 4/9."),
    

        Question(questionText: "What is the volume of a sphere with a radius of 3 and a height of 6?",
                 questionAnswers: ["18π","18","28π","36π"],
                 correctAnswer: 3,
                 type:"Non-Calculator",
                 explanation: "Volume of sphere = 4/3 π r^3 \n Plug in the value 3 for the r (radius) /n 4/3 π 3^3 = 4/3 π (27) = 36π"),
    

       Question( questionText: "How many degrees are in 2π/3 radians?",
                 questionAnswers: ["75°","100°","120°","125°"],
                 correctAnswer: 2,
                 type:"Calculator",
                 explanation: "To convert from degrees to radians, multiply the degrees by 180° / π \n 2π / 3 * 180 / π = 120° "),
    



       Question(questionText: "Given the values 50, 45, 75, 30, 35, 2, 60, and 75, find the mean.",
                 questionAnswers: ["75","2","53.1","46.5"],
                 correctAnswer: 3,
                 type:"Calculator",
                 explanation: "Arithmetic mean is calculated by adding a group of numbers and then dividing by the count of those numbers. \n Start by adding the values together using your calculator \n 50 + 45 + 75 + 30 +  35 + 2 + 60 + 75 = 372 \n. Divide the sum by 8 since there are 8 values in this set. \n 372/8 = 46.5  "),


       Question(questionText: "Given the values 50, 45, 75, 30, 35, 2, 60, and 75, find the median.",
                 questionAnswers: ["45","47.5","50","75"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "Since there is an even amount of numbers, to find the median you must take the middle 2 numbers and find the average value of them. The two middle numbers are 50 and 45, so you do 45+50 and divide by 2, giving you an answer of 47.5 "),


       Question(questionText: "Given the values 50, 45, 75, 30, 35, 2, 60, and 75, find the mode.",
                 questionAnswers: ["45","2","75","47.5"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "The mode of a set of values is the number that shows up the most times. 75 shows up twice in this set of values, and everything else shows up once, so the mode is 75."),


       Question(questionText: "Given the values 50, 45, 75, 30, 35, 2, 60, and 75, removing which value would increase the mean by the greatest amount?",
                 questionAnswers: ["35","2","50","75"],
                 correctAnswer: 1,
                 type:"Calculator",
                 explanation: "To increase the value of the mean by the greatest amount possible, you must remove the smallest number from the set of data. The smallest number is 2, so that is the answer."),


       Question(questionText: "In the equation y = 2x+5, what is the y intercept?",
                 questionAnswers: ["0","2/5","2","5"],
                 correctAnswer: 3,
                 type:"Non-Calculator",
                 explanation: "The y intercept is where a line crosses the y axis. A line crosses the y axis when the x value is 0. Hence, plug in 0 for x and you will get 5 as the y value. Therefore, the y intercept is 5. You can also do this by recognizing that the equation is already in y=mx+b form, where b represents the y intercept."),


       Question(questionText: "If f(x) = 2x^3 + 2, what does f(0) + f(1) equal?",
                 questionAnswers: ["4","8","6","0"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "f(0) = 2(0)^3 + 2 = 2 \n f(1) = 2(1)^3 + 2 = 4 \n f(0) + f(1) = 2 + 4 = 6"),


       Question(questionText: "Will you be giving us a positive review in the app store?",
                 questionAnswers: ["Yes","No","No","No"],
                 correctAnswer: 0,
                 type:"Non-Calculator",
                 explanation: "No Explanation Needed :) "),


       Question(questionText: "If a chef cooks 10 dishes on her first day of work, 25 dishes on her second day, 68 dishes on her third day, and 124 dishes on her fourth day, what type of relationship does this scenario display?",
                 questionAnswers: ["Decreasing Exponential","Increasing Exponential","Decreasing Linear","Increasing Linear"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "You can rule out answers A and C, because the number of dishes is increasing, not decreasing. Next, recognize that the number of dishes is not increasing in equal increments, but is increasing by more each day, meaning it has to be increasing exponential."),


       Question(questionText: "If one builder can build 2 houses every 5 days, how many houses could 10 builders build in 20 days?",
                 questionAnswers: ["75","80","100","50"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "Start by multiplying the productivity of one worker by 4 to match the time frame of 20 days, rather than 5. This shows you that one worker can build 8 houses in 20 days. You then multiply it by 10 to match the amount of workers, giving you a final answer of 80."),


       Question(questionText: "What is the expression for the cost of those 80 houses in the previous question if h houses can be purchased for d dollars?",
                 questionAnswers: ["80/d","80","80h/d","80d/h"],
                 correctAnswer: 3,
                 type:"Non-Calculator",
                 explanation: "The easiest way to solve this problem is to plug in values. \n If we want to purchase 2 houses for 3 dollars, the 80 houses should come out to be worth 120 dollars. \n By plugging in 2 for h and 3 for d, we can see that only the fourth options yield a cost of 120 dollars."),


       Question(questionText: "If Mary cooked 42 kilograms of stew and she cooked 50% more stew than John, how much stew did John cook in kilograms?",
                 questionAnswers: ["24","28","84","26"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "In this case, we can solve by dividing Mary’s 42 kilograms by 1.5 which yields the correct answer of 28."),


       Question(questionText: "Given 4^y = 100, what does 4^(y-2) equal?",
                 questionAnswers: ["5/6","16/100","100/16","6"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "Using exponent rules, we can get 4^(y-2) = (4^y)/4^2. \n Since 4^y = 100 and 4^2 = 16, we get the answer to be 100/16."),


       Question(questionText: "If the √z + 8 = 25, z = what?",
                 questionAnswers: ["324","256","225","289"],
                 correctAnswer: 3,
                 type:"Non-Calculator",
                 explanation: "√z + 8 = 25 \n √z + 8 - 8 = 25 - 8 \n √z = 17 \n z = 17^2 = 289"),


       Question(questionText: "If 3x^2 + hx +1=0 and there are no real solutions, what is a possible value of h?",
                 questionAnswers: ["3","4","5","6"],
                 correctAnswer: 0,
                 type:"Non-Calculator",
                 explanation: "The equation is in the form ax^2 + bx + c. \n To find if the equation has any real solutions, we use the formula b^2 - 4ac (discriminant from the quadratic formula). \n If the outcome is negative, the quadratic has no real solutions. \n When plugging in b = 3, we get the answer to be -3, so 3 is the correct answer."),


       Question(questionText: "Out of the following choices, which is a negative solution to the equation 5 = 8x^2 - 3x?",
                 questionAnswers: ["1","-5/8","-2/8","-4/8"],
                 correctAnswer: 1,
                 type:"Calculator",
                 explanation: "Plug into calculator and find the roots using the graphing feature or by checking all the choices until you figure out it is -5/8."),


       Question(questionText: "If it takes Monica 30 minutes to make anywhere from 3 to 5 bowls of soup, what is a possible amount of hours that Monica could take to make 48 bowls of soup?",
                 questionAnswers: ["15/2","9/2","9","10"],
                 correctAnswer: 0,
                 type:"Calculator",
                 explanation: "Use process of elimination. In 9 hours, the least amount of soup made is 54 bowls. In 10 hours the least amount made is 60 bowls. In 9/2 hours, the most made is 45 bowls. This leaves the answer of 15/2. "),


       Question(questionText: "If g(5x) = 2x-5, what is the value of g(10)?",
                 questionAnswers: ["15","-1","-3","9"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "If 5x = 10, you can divide both sides by 5 to find that x = 2. Now plug x = 2 into the right side of the problem, and you get 2(2) - 5, which is equal to -1."),


       Question(questionText: "If 2x+5=0 has a solution represented by the variable x, what would the |x| be?",
                 questionAnswers: ["5/2","-5/2","-2/5","2/5"],
                 correctAnswer: 0,
                 type:"Non-Calculator",
                 explanation: "2x + 5 = 0 \n 2x = -5 \n x = -5/2 \n |x| = 5/2 "),


       Question(questionText: "If x+7 = 3, what does 4x+28 equal?",
                 questionAnswers: ["12","cannot be determined","9","6"],
                 correctAnswer: 0,
                 type:"Non-Calculator",
                 explanation: "x + 7 = 3 \n Multiply Equation by Greatest Common Factor of the terms: \n 4(x + 7 = 3) \n 4x + 28 = 12"),


       Question(questionText: "If 2y=3x-5 and 2y+2x=6, what does x equal?",
                 questionAnswers: ["3/2","5/11","11/5","-5/11"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "Recognize that the first problem gives you the value of 2y in terms of x, which you can use to plug into the second problem. Once you plug in 3x-5 in for y, you get 3x-5 + 2x = 6. Combine like terms and isolate x, and you get your answer of 11/5."),


       Question(questionText: "Given 6x-5y=7 and 5x-6y=5, find x+y.",
                 questionAnswers: ["cannot be determined","-2","2","12"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "To find the value of x+y, you can subtract the whole second equation from the first. Subtract 5x from 6x, subtract -6y from -5y, and 5 from 7. When simplified, you get x + y = 2, which gives you your answer of 2."),


       Question(questionText: "If 3(2x-6) = kx-18 has an infinite number of solutions, what must k equal?",
                 questionAnswers: ["3","9/2","9","6"],
                 correctAnswer: 3,
                 type:"Non-Calculator",
                 explanation: "By multiplying out the left side of the equation by 3, we get 6x-18. For there to be an infinite number of solutions, both sides of the equation have to be equal, so k has to equal 6."),


       Question(questionText: "What is the y intercept of the equation y=5^x  - 3?",
                 questionAnswers: ["(0,-3)","(-3,0)","(0,2)","(0,-2)"],
                 correctAnswer: 3,
                 type:"Non-Calculator",
                 explanation: "To find the y intercept, we need to plug in 0 for x. \n 5^0 = 1. \n 1 - 3 = -2, so the point is (0,-2)."),


       Question(questionText: "What value of c satisfies the following equation: 7(x-3) = 2x?",
                 questionAnswers: ["21/5","5/21","12/5","-21/5"],
                 correctAnswer: 0,
                 type:"Non-Calculator",
                 explanation: "By multiplying out the left side of the equation, we get 7x - 21 = 2x. \n This means that 5x = 21, so x has to be 21/5 for both sides of the equation to be equal."),


       Question(questionText: "What point satisfies the inequalities y>4x+2 and y<-x?",
                 questionAnswers: ["(2,10)","(-1,0)","(0,0)","(0,2)"],
                 correctAnswer:1,
                 type:"Non-Calculator",
                 explanation: "By plugging in all of the points, you can find that (-1,0) is the only correct answer. \n In the first equation, the ordered pair yields 0>-2 which is true. \n In the second equation, we get 0<1 which is also true. \n Since both statements hold true, (-1,0) is the correct answer."),


       Question(questionText: "Given the equation x^2 + 8x + y^2 + 2y = 7, what are the coordinates of the center of the circle?",
                 questionAnswers: ["(4,1)","(-1,-4)","(-4,-1)","(1,4)"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "By completing the square, we get x^2 + 8x + 16 + y^2 + 2y + 1 = 7 + 17. \n Then, we can get (x+4)^2 + (y+1)^2 = 27. \n This is in the standard form of a circle (x-h)^2 + (y-k)^2 = r^2, which we can use to find the center (h,k) to be (-4,-1)."),


       Question(questionText: "A graph with the equation y=(x-3)(x+2)(x+9)(x+8) has a point (d,s). If -2<d<3, what is a possible value for s?",
                 questionAnswers: ["270","0","540","-540"],
                 correctAnswer: 3,
                 type:"Calculator",
                 explanation: "We know that since d (x) has to be within -2 and 3 not inclusive, there is no possible way s (y) to ever be positive. \n This means that -540 is the only possible correct answer. \n You can use a calculator to confirm this using the graphing feature and finding the minimum to be around -541."),


       Question(questionText: "Given the equation 8x+9 = kx+8, what value of k would allow for the equation to have no solutions?",
                 questionAnswers: ["9/8","8","8/9","9"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "For the equation to have no solutions, both sides would need to be parallel but with different y intercepts. \n This is true when k = 8."),


       Question(questionText: "Given 2x = 7, find x + 5/2?",
                 questionAnswers: ["2","6","-2","-6"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "For 2x = 7 to be true, x has to equal 7/2. \n 7/2 + 5/2 = 12/2 which is 6."),


       Question(questionText: "If the solutions to x^2 - 1 = 0 are represented by d and s, what is s-(-d)?",
                 questionAnswers: ["1","0","-1","2"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "The solutions to the equation are x = 1 and x = -1. When they are added together, the answer is 0."),


       Question(questionText: "If the solutions to |x+10| = 7 are represented by d and s, what is s+d?",
                 questionAnswers: ["20","-3","-20","7"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "The solutions to the equation are x = -3 and x = -17. When added, they add up to -20."),


       Question(questionText: "How many solutions does |x^2 + 5|= -1 have?",
                 questionAnswers: ["0","1","2","3"],
                 correctAnswer: 0,
                 type:"Non-Calculator",
                 explanation: "Because the absolute value of something is always positive or zero, it can never be negative. This means there are no solutions to this equation."),


       Question(questionText: "Given y>2x+9, which ordered pair makes the inequality true?",
                 questionAnswers: ["(0,0)","(-9/2,0)","(0,9)","(-1/2,9)"],
                 correctAnswer: 3,
                 type:"Non-Calculator",
                 explanation: "By plugging in the order pair, only (-1/2,9) make the inequality true because 9>8."),


       Question(questionText: "What is the maximum y value of the function f(x) = -(x^2) - 6x - 9?",
                 questionAnswers: ["-6","-9","0","3"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "The equation can be shown by y = -(x+3)^2. No matter what number is plugged in, the y value will never be greater than 0 (when x = -3), so the answer is 0."),


       Question(questionText: "What is the diameter of the circle represented by x^2 + 10x + y^2 + 24x = 0?",
                 questionAnswers: ["13","5","12","26"],
                 correctAnswer: 3,
                 type:"Non-Calculator",
                 explanation: "To solve this equation, we have to complete the square and get x^2 +10x + 25 + y^2 + 24x + 144 = 25 + 144. \n If we put this into the standard form of a circle, we get (x+5)^2 + (y+12)^2 = 13^2. \n This means that the radius is 13, so the diameter has to be double that which is 26."),


       Question(questionText: "If the equation f(x) = (x-9)^2 is translated down 64 units, what would the y value of the y intercept be?",
                 questionAnswers: ["81","17","-17","-145"],
                 correctAnswer: 1,
                 type:"Calculator",
                 explanation: "The y intercept of the original function occurs where the x value of the function is 0. \n f(0) = (-9)^2 = 81 \n Hence, the y value at the y intercept of the untranslated equation is 81. \n However, the function is now translated down 64 units vertically meaning that the y value of the y intercept is 64 units lower. \n 81 - 64 = 17"),


       Question(questionText: "Given the equation |2x-4| = 2, which negative value makes the equation true?",
                 questionAnswers: ["1","-1","None","3"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "Using the key words ‘negative value,’ we know that the answer is either -1 or ‘None.’ When -1 is plugged in for x, the output would be 6. This means that ‘None’ is the correct answer."),


       Question(questionText: "Given the equation x^2 - 4 = 0, what is a possible value of x-7?",
                 questionAnswers: ["9","5","-9","7"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "The answers to the first equation are x = 2 and x = -2. \n When plugged into x-7, the answer is either -9 or -5. \n Only -9 is an available answer choice, so that is the correct answer."),


       Question(questionText: "What is the value of 100% of 500?",
                 questionAnswers: ["500","50000","100","1000"],
                 correctAnswer: 0,
                 type:"Calculator",
                 explanation: "100% of a value is the value itself. 100% is 100/100, which is equal to 1. To find the percentage of a number, you multiply the fractional percentage to the number. \n 1 * 500 = 500"),


       Question(questionText: "What is the value of increasing 500 by 100%?",
                 questionAnswers: ["500","50000","100","1000"],
                 correctAnswer: 3,
                 type:"Calculator",
                 explanation: "Increasing a number by 100% means doubling it, so the answer is 1000."),


       Question(questionText: "What is a zero of the function y = 5?",
                 questionAnswers: ["(5,0)","(0,5)","None","(5,5)"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "Zeroes, roots, and x-intercepts are all names for values where a function crosses the x axis. The function y = 5 is a horizontal line and never crosses the x axis. Hence, there are no solutions."),


       Question(questionText: "What is the y intercept of the function y = 5?",
                 questionAnswers: ["(5,0)","(0,5)","(None)","(5,5)"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "The y intercept is a value of a function when x is equal to 0. Since y = 5 is a horizontal line, its value at x = 0 is 5. This means that (0,5) is the correct answer."),


       Question(questionText: "What is the solution to |x-9| = |x-7|?",
                 questionAnswers: ["8","-8","-9","-7"],
                 correctAnswer: 0,
                 type:"Non-Calculator",
                 explanation: "By plugging in all the choices, we can see that only 8 works. When 8 is plugged in, the left side becomes |-1| and the right side becomes |1|. Both are equivalent to 1."),


       Question(questionText: "If Brandon’s car goes at a velocity of 20 meters per second, how fast does his car go in centimeters per hour. ?",
                 questionAnswers: ["120000","720000","7200000","1200000"],
                 correctAnswer: 2,
                 type:"Calculator",
                 explanation: "To do this conversion, we must first multiply 20 by 3600 because that is how many seconds are in an hour. Then, we must multiply that value by 100 because that is how many centimeters are in a meter. 20 * 3600 * 100 = 7200000."),


       Question(questionText: "For the function f(x) = x^3 - 5, what is the value of f(2) - f(1)?",
                 questionAnswers: ["1","-1","4","-4"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "f(2) = 2^3 - 5 = 3 \n f(1) = 1^3 - 5 = -4 \n f(2) - f(1) = 3 - (-4) \n 3 + 4 = 7"),


       Question(questionText: "Given 5x = 30, find 7x + 45?",
                 questionAnswers: ["87","101","80","94"],
                 correctAnswer: 0,
                 type:"Calculator",
                 explanation: "5x = 30 \n x = 6 \n Now that you know x = 6, plug this value in for x in the equation 7x + 45 \n 7(6) + 45 = 42 + 45 = 87"),


       Question(questionText: "If Johnny loses 5 pounds of weight in 20 days, how much weight would he lose in 52 days?",
                 questionAnswers: ["12","13","26/3","18"],
                 correctAnswer: 1,
                 type:"Calculator",
                 explanation: "The ratio of pounds to days is 5 to 20 which is equivalent to 1 to 4. \n This means that the weight lost in 52 days would be 52/4 or 13 pounds."),


       Question(questionText: "If the volume of a cone is 30π ft^3 and the height is 10 ft what is the length of the diameter in feet?",
                 questionAnswers: ["3","9","6","12"],
                 correctAnswer: 2,
                 type:"Calculator",
                 explanation: "The formula for a volume of a cone is (π/3)(r^2)(h). If we set that equation with our known values equal to the known volume, we get (π/3)(r^2)(10) = 30π. We can then isolate r^2 to be equal to 9. This means that the radius of the cone is equal to 3. A diameter is equal to 2r, so the diameter turns out to be 6 feet long."),


       Question(questionText: "Assuming d and s are whole numbers, if the sum of d and s is 30 and the product of d and s is 225, what is the quotient of d divided by s?",
                 questionAnswers: ["17/3","1/2","1","3"],
                 correctAnswer: 2,
                 type:"Non-Calculator",
                 explanation: "The constraints can be represented algebraically as d + s = 30 and d * s = 225. \n This means that s = d - 30. \n When plugged into the other equation, we get d(d-30) = 225. \n We can use this to get d^2 - 30d - 225 = 0. \n This factors to (d-15)^2 = 0. This means that d = 15. \n We can plug this back into the first equation to find that s also equals 15. \n 15/15 = 1, so that is the answer."),


       Question(questionText: "What is the value of x if √(5x) = 100?",
                 questionAnswers: ["20","200","2000","20000"],
                 correctAnswer: 2,
                 type:"Calculator",
                 explanation: "√(5x) = 100 \n 5x = 10000 \n x = 2000"),


       Question(questionText: "If f(x) = 2x+2, what is f(0) equal to?",
                 questionAnswers: ["0","2","-2","6"],
                 correctAnswer: 1,
                 type:"Non-Calculator",
                 explanation: "f(0) = 2(0) + 2 = 2"),


       Question(questionText: "If 6wxyz+6 = 24, what does wxyz+1 equal?",
                 questionAnswers: ["cannot be determined","6","4","2"],
                 correctAnswer: 2,
                 type:"Calculator",
                 explanation: "Simplify the equation by dividing each term by the Greatest Common Factor of 6 since all terms in the equation are divisible by 6. \n 6wxyz+6 = 24 \n wxyz+1 = 4"),


       Question(questionText: "If the area of a circle is 49π, what is the circumference of that circle?",
                 questionAnswers: ["14π","49π/2","28π","7π"],
                 correctAnswer: 0,
                 type:"Calculator",
                 explanation: "Area of a circle = πr^2 \n 49π = πr^2 \n 49 = r^2 \n r =7 \n Once you have the radius of the circle, use the solve for the circumference. \n Circumference = 2πr = 2π(7) = 14π"),
        
        Question(questionText: "9x+6 = 9x-3 \n In the equation above, how many values of x are viable solutions?",
                         questionAnswers: ["0","1","2","3"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "In this scenario, the two equations can never be equal."),


                Question(questionText: "Given the equations x+5 = kx+9, what value of k makes the equation have no solutions?",
                         questionAnswers: ["3","2","1","4"],
                         correctAnswer: 2,
                         type:"Non-Calculator",
                         explanation: "If the equations were to be parallel but have different y intercepts, there would be no solutions. This means that x has to equal 1 so the left side can have a y intercept of 5 and the right side can have a y intercept of 9 while being parallel to each other."),
            

          Question(questionText: "If cos 53° = x, then what is sin 37° in terms of x?",
                         questionAnswers: ["x","2x","x^2","90-x"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "cos(y) = sin(90-y) and 90-53=47 so the two terms are equivalent."),

                Question(questionText: "If a square has a side length x and another square has a side length of 2x, how much larger is the second square’s area?",
                         questionAnswers: ["8","2","4","16"],
                         correctAnswer: 2,
                         type:"Non-Calculator",
                         explanation: "The first square’s area would be x*x or x^2 while the second square’s area would be 2x*2x or 4x^2. \n (4x^2)/(x^2)=4."),
            

                Question(questionText: "If there are 6 white blocks, 1 red block, and 2 blue blocks in a bag, what is the probability that a blue or white block is chosen?",
                         questionAnswers: ["9/10","8/10","4/9","8/9"],
                         correctAnswer: 3,
                         type:"Non-Calculator",
                         explanation: "There are 9 blocks in total and 8 are either white or blue so the probability is 8/9."),
            

               Question(questionText: "What is a negative zero for  the equation y = x^2 - 5x - 6?",
                         questionAnswers: ["-6 ","6","-1","1"],
                         correctAnswer: 2,
                         type:"Non-Calculator",
                         explanation: "In factored form, the equation would be (x-6)(x+1). \n To find the zeros, set the equation equal to 0 which means that -1 would be the only possible solution."),
            

               Question(questionText: "What is the volume of a sphere with a radius of 1 and a height of 1?",
                         questionAnswers: ["4π/3","π","π/3","2π"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "Volume of sphere = 4/3πr^3 \n Plug in the value 1 for the r (radius) /n 4/3 π 1^3 = 4/3 π (1) = π"),
            

               Question(questionText: "How many degrees are in π radians?",
                         questionAnswers: ["360°","180°","120°","90°"],
                         correctAnswer: 1,
                         type:"Calculator",
                         explanation: "To convert from radians to degrees, multiply the radians by 180° / π \n π /  * 180 / π = 180° "),
            



               Question(questionText: "Given the values 40, 7, 10, 88, 1, 2, 55, and 10, find the mean.",
                         questionAnswers: ["25","10","26.625","26.750"],
                         correctAnswer: 2,
                         type:"Calculator",
                         explanation: "Arithmetic mean is calculated by adding a group of numbers and then dividing by the count of those numbers. \n Start by adding the values together using your calculator \n 40 + 7 + 10 + 88 + 1 + 2 + 55 + 10 = 213\n. Divide the sum by 8 since there are 8 values in this set. \n 213/8 = 26.625  "),


               Question(questionText: "Given the values 40, 7, 10, 88, 1, 2, 55, and 10, find the median.",
                         questionAnswers: ["25","10","26.625","26.750"],
                         correctAnswer: 1,
                         type:"Non-Calculator",
                         explanation: "Since there is an even amount of numbers, to find the median you must take the middle 2 numbers by their values from least to greatest and find the average value of them. The two middle numbers are 10 and 10, so you do 10+10 and divide by 2, giving you an answer of 10 "),


               Question(questionText: "Given the values 40, 7, 10, 88, 1, 2, 55, and 10, find the mode.",
                         questionAnswers: ["25","10","26.625","26.750"],
                         correctAnswer: 1,
                         type:"Non-Calculator",
                         explanation: "The mode of a set of values is the number that shows up the most times. 10 shows up twice in this set of values, and everything else shows up once, so the mode is 10."),


               Question(questionText: "Given the values 50, 45, 75, 30, 35, 2, 60, and 75, removing which value would decrease the mean by the greatest amount?",
                         questionAnswers: ["35","2","50","75"],
                         correctAnswer: 3,
                         type:"Calculator",
                         explanation: "To decrease the value of the mean by the greatest amount possible, you must remove the largest number from the set of data. The largest number is 75, so that is the answer."),


               Question(questionText: "In the equation y = 2x^2 + 2x + 5, what is the y intercept?",
                         questionAnswers: ["2","2/5","5/2","5"],
                         correctAnswer: 3,
                         type:"Non-Calculator",
                         explanation: "The y intercept is where a line crosses the y axis. A line crosses the y axis when the x value is 0. Hence, plug in 0 for x and you will get 5 as the y value. Therefore, the y intercept is 5. You can also do this by recognizing that the equation is already in y=ax^2 + bx + c form, where c represents the y intercept."),


               Question(questionText: "If f(x) = 5, what does f(0) + f(1) equal?",
                         questionAnswers: ["0","5","7.5","10"],
                         correctAnswer: 3,
                         type:"Non-Calculator",
                         explanation: "f(0) = 5\n f(1) = 5 \n f(0) + f(1) = 5 + 5 = 10"),


               Question(questionText: "Have you checked out the explanation feature in the top right corner?",
                         questionAnswers: ["Yes","No","No","No"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "You found it!"),


               Question(questionText: "If a chef cooks 10 dishes on her first day of work, 10 dishes on her second day, 10 dishes on her third day, and 10 dishes on her fourth day, what type of relationship does this scenario display when it comes to total dishes cooked?",
                         questionAnswers: ["Decreasing Exponential","Increasing Exponential","Decreasing Linear","Increasing Linear"],
                         correctAnswer: 3,
                         type:"Non-Calculator",
                         explanation: "You can rule out answers A and C, because the number of dishes is increasing, not decreasing. Next, recognize that the number of dishes is increasing in equal increments meaning it has to be increasing linear."),


               Question(questionText: "If 5x = 25, what does x+20 equal?",
                         questionAnswers: ["20","50","25","75"],
                         correctAnswer: 2,
                         type:"Non-Calculator",
                         explanation: "If 5x = 25, then x = 5. 5 + 20 = 25."),


               Question(questionText: "If √x = y, what is y^2 in terms of x?",
                         questionAnswers: ["x^2","2x","x","2x^2"],
                         correctAnswer: 2,
                         type:"Non-Calculator",
                         explanation: "If √x = y, squaring both sides would yield x = y^2 so x is the correct answer."),


               Question(questionText: "If y - 3 = 2(x-25), what is the slope of the represented line?",
                         questionAnswers: ["-3","3","2","25"],
                         correctAnswer: 2,
                         type:"Non-Calculator",
                         explanation: "Knowing this equation is in point slope form helps us realize that 2 is = to m which is the slope."),


               Question(questionText: "Given 2^y = 4, what does 2^(y-2) equal?",
                         questionAnswers: ["0","1","2","cannot be found"],
                         correctAnswer: 1,
                         type:"Non-Calculator",
                         explanation: "Using exponent rules, we can get 2^(y-2) = (2^y)/2^2. \n Since 2^y = 4 and 2^2 = 4, we get the answer to be 1."),


               Question(questionText: "If the √x + 8 = 11, x = what?",
                         questionAnswers: ["3","9","27","18"],
                         correctAnswer: 1,
                         type:"Non-Calculator",
                         explanation: "√x + 8 = 25 \n √x + 8 - 8 = 11 - 8 \n √x = 3 \n x = 3^2 = 9"),

               Question(questionText: "If the √x + √81 = 11, x = what?",
                         questionAnswers: ["16","1","2","4"],
                         correctAnswer: 3,
                         type:"Non-Calculator",
                         explanation: "√x + √81 = 11 \n √x + 9 = 11 \n √x + 9 - 9 = 11 - 9 \n √x = 2 \n x = 2^2 = 4"),

               Question(questionText: "Given the equation y = x^2 + 5, what is the y intercept if the parabola is moved down two units?",
                         questionAnswers: ["5","7","3","1"],
                         correctAnswer: 2,
                         type:"Calculator",
                         explanation: "If the parabola was to be moved down two units, the new equation would be y = x^2 + 3. \n To find the y intercept, we would plug in 0 for x to get a y intercept of 3."),


               Question(questionText: "If g(2x) = 2x-5, what is the value of g(10)?",
                         questionAnswers: ["5","10","15","20"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "If 2x = 10, you can divide both sides by 5 to find that x = 5. Now plug x = 5 into the right side of the problem, and you get 2(5) - 5, which is equal to 5."),

          Question(questionText: "If g(x) = 2x^2-5, what is the value of g(10)?",
                         questionAnswers: ["395","195","255","295"],
                         correctAnswer: 1,
                         type:"Non-Calculator",
                         explanation: "To find g(10), plug in 10 for x into the right side of the equation and you get 2(10)^2 - 5, which is equal to 195."),

               Question(questionText: "If 2x+5=0 has a solution represented by the variable x, what would the |2x| be?",
                         questionAnswers: ["5","-5","-4/5","4/5"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "2x + 5 = 0 \n 2x = -5 \n x = -5/2 \n |2x| = 10/2 = 5 "),


               Question(questionText: "If x-7 = 5, what does 5x-35 equal?",
                         questionAnswers: ["25","cannot be determined","35","5"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "x - 7 = 5 \n Multiply Equation by Greatest Common Factor of the terms: \n 5(x - 7 = 5) \n 5x - 35 = 25"),

        Question(questionText: "If x^2 - 7 = 9, what does 5x equal?",
                         questionAnswers: ["20","cannot be determined","35","5"],
                         correctAnswer: 1,
                         type:"Non-Calculator",
                         explanation: "If x^2 - 7 = 9, then x^2 = 16 so x can either be -4 or 4. \n This means that 5x can be either -20 or 20 so one value cannot be determined."),


               Question(questionText: "If 8y=3x-5 and 2y+2x=1, what does x equal?",
                         questionAnswers: ["11/9","9/11","cannot be determined","-11/9"],
                         correctAnswer: 1,
                         type:"Non-Calculator",
                         explanation: "Recognize that the second equation can be multiplied by 4 on both sides to get 8y + 8x = 4. \n After plugging in the value of 8y given in the first equation, we get 3x - 5 + 8x = 4 which means that 11x = 9. \n This means that x = 9/11."),


               Question(questionText: "Given 5y = 3x - 7 and 6y - 2x = 9, find x+y.",
                         questionAnswers: ["cannot be determined","-16","2","16"],
                         correctAnswer: 3,
                         type:"Non-Calculator",
                         explanation: "First, rearrange the first equation to get 5y - 3x = -7. The subtract the first equation from the second one to get y + x = 16."),


               Question(questionText: "If 3(x-1) = kx-3 has an infinite number of solutions, what must k equal?",
                         questionAnswers: ["3","9/2","9","6"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "By multiplying out the left side of the equation by 3, we get 3x-3. For there to be an infinite number of solutions, both sides of the equation have to be equal, so k has to equal 3."),


               Question(questionText: "What is the y intercept of the equation y=5^2x - 1?",
                         questionAnswers: ["(0,0)","(-1,0)","(1,0)","(0,-1)"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "To find the y intercept, we need to plug in 0 for x. \n 5^0 = 1. \n 1 - 1 = 0, so the point is (0,0)."),

              Question(questionText: "What is the y intercept of the equation y=√(x-3)?",
                         questionAnswers: ["(0,0)","None","(-3,0)","(3,0)"],
                         correctAnswer: 1,
                         type:"Non-Calculator",
                         explanation: "To find the y intercept, we need to plug in 0 for x. \n  = 1. \n We get √(-3) which is not a real solution so there is no y intercept."),


               Question(questionText: "What positive value of x satisfies the following equation: 7(x+3)^2 = 0?",
                         questionAnswers: ["3","-3","7/3","None"],
                         correctAnswer: 3,
                         type:"Non-Calculator",
                         explanation: "There is no positive value that satisfies the equation because only x = -3 would make the left side of the equation equal to 0."),



               Question(questionText: "Given the equation x^2 + 8x + y^2 + 2y = -1, what is the radius of the circle?",
                         questionAnswers: ["4","1","8","2"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "By completing the square, we get x^2 + 8x + 16 + y^2 + 2y + 1 = -1 + 17. \n Then, we can get (x+4)^2 + (y+1)^2 = 16. \n This is in the standard form of a circle (x-h)^2 + (y-k)^2 = r^2, which we can use to find the radius to be the square root of 16 which is 4."),



               Question(questionText: "Given the equation 2x+2 = kx+8, what value of k would allow for the equation to have no solutions?",
                         questionAnswers: ["2","4","1/4","0"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "For the equation to have no solutions, both sides would need to be parallel but with different y intercepts. \n This is true when k = 2."),


               Question(questionText: "Given 4x = 10, find x + 5/2?",
                         questionAnswers: ["5","2","0","10"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "For 4x = 10 to be true, x has to equal 10/4 which is 5/2. \n 5/2 + 5/2 = 10/2 which is 5."),


               Question(questionText: "What is a solution to x^2 + 1 = 0?",
                         questionAnswers: ["1","0","-1","None"],
                         correctAnswer: 3,
                         type:"Non-Calculator",
                         explanation: "x^2 would have to be a negative value for there to be a solution, but that is not possible so the answer is ‘None.’"),


               Question(questionText: "If the solutions to |x+10| = 7 are represented by d and s, what is s*d?",
                         questionAnswers: ["54","27","108","76"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "The solutions to the equation are x = -3 and x = -17. When multiplied, the product is 54."),


               Question(questionText: "How many solutions does |x^2 + 5|= 0 have?",
                         questionAnswers: ["0","1","2","3"],
                         correctAnswer: 0,
                         type:"Non-Calculator",
                         explanation: "Because the absolute value of something is always positive or zero, x^2 would have to equal -5. However, this is never possible so there are 0 solutions."),

    ]
}
 
























