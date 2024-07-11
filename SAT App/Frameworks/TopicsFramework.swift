//
//  TopicsFramework.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/24/21.
//

import Foundation

import SwiftUI

struct Category:Identifiable {
    var id = UUID()
    var title:String
    var topics:[Topic]
}

struct Topic: Identifiable{
    var id = UUID()
    var title:String
    var text:String
    var ID1: String
    var ID2: String
}

struct TopicRow: View {
    var topic:Topic
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                NavigationLink(destination: LearnView(subject: topic.title, text: topic.text, ID1: topic.ID1, ID2: topic.ID2)) {
                    Text(topic.title)
                        .padding(5.0)
                }
            }
            Spacer()
        }
    }
}

var CategoriesData =  [
    Category(
        title: "Heart of Algebra",
        topics: [
            Topic(title: "Solving Linear Equations and Linear Inequalities", text: "A linear inequality resembles in form an equation, but with the equal sign replaced by an inequality symbol. The solution of a linear inequality is generally a range of values, rather than one specific value.", ID1: "fmt6mKBQhVg", ID2: "8gnpIIy-g3c"),
            Topic(title: "Interpreting Linear Functions", text: "As it turns out, linear functions are often helpful in interpreting real-life scenarios, especially when something is going up or down by a certain number every time.", ID1: "hOsBsHA6okM", ID2: "1yUeAFwOoMM"),
            Topic(title: "Linear Equation Word Problems", text: "Linear equation word problems usually involve some sort of rate of change, or steady increase (or decrease) based on a single variable. ", ID1: "gBCMNXuZPrE", ID2: "zFVgT6wo-8k"),
            Topic(title: "Linear Inequality Word Problems", text: "While a linear equation gives us exactly one value when solved, a linear inequality gives us multiple values. ", ID1: "BKSMfZThaYs", ID2: "DnJhKuzXfx8"),
            Topic(title: "Graphing Linear Equations", text: "A linear equation, sometimes called a linear function, is an equation that forms a straight line when graphed, using y = mx + b", ID1: "PesqhjGfQvY", ID2: "xlxQ_kUREMU"),
            Topic(title: "Linear Function Word Problems", text: "Linear equation word problems usually involve some sort of rate of change, or steady increase (or decrease) based on a single variable. ", ID1: "lJNHUtNNa5M", ID2: "PfnLP9ixQY4"),
            Topic(title: "Systems of Linear Inequalities Word Problems", text: "A system of linear inequalities is a collection of linear inequalities in the same variables.", ID1: "hDAL4uuzUco", ID2: "-5pXEsA68pk"),
            Topic(title: "Solving Systems of Linear Equations", text: "A System of Linear Equations is when we have two or more linear equations working together.", ID1: "FgX3gLDDlzI", ID2: "-ylIGciS7_8"),
            Topic(title: "Systems of Linear Equations Word Problems", text: "Systems of linear equations word problems ask us to translate real-world scenarios into a system of two linear equations with two variables.", ID1: "2EcUlgR5ksY", ID2: "S22qS4EpRGo")
        ]
    ),
    Category(
        title: "Passport to Advanced Mathematics",
        topics: [
            Topic(title: "Solving quadratic equations", text: "Solving quadratic equations involves setting a quadratic equation equal to 0, and solving for x.", ID1: "zpE-CfCvXiE", ID2: "_8zSTsvklrM"),
            Topic(title: "Interpreting nonlinear expressions", text: "Both quadratic functions and exponential functions can be used to model nonlinear relationships in everyday life, such as the height of a falling object or the population change of a city. The ability to interpret these functions will allow us to better understand these scenarios.", ID1: "YfYiS2Bfx20", ID2: "EVeE0jab1Fk"),
            Topic(title: "Quadratic and exponential word problems", text: "Quadratic and exponential word problems ask us to solve equations or evaluate functions that model real-world scenarios using quadratic and exponential expressions.", ID1: "t9DOaJJCTSM", ID2: "fitQr1yeFeU"),
            Topic(title: "Manipulating quadratic and exponential expressions", text: "Manipulating quadratic and exponential expressions questions can ask us to rewrite an expression to showcase a specific graphical feature.", ID1: "PLVfo2ofHnA", ID2: "qdc-CIDVPMM"),
            Topic(title: "Radicals and rational exponents", text: "A rational exponent represents both an integer exponent and an nth root.", ID1: "SgZAuxBCE5w", ID2: "DZeeUFAJsA4"),
            Topic(title: "Radical and rational equations", text: "Radical equations are equations in which variables appear under radical symbols and rational equations are equations in which variables can be found in the denominators of rational expressions.", ID1: "rlVi9DQgO0I", ID2: "mctXVcwge0U"),
            Topic(title: "Operations with rational expressions", text: "Rewrite the equivalent form of each rational expression using the common denominator. Add or subtract the numerators of the expressions while retaining the common denominator. Combine like terms and write the result.", ID1: "b_LdCoUR5hw", ID2: "ACbnXtGCfLA"),
            Topic(title: "Operations with polynomials", text: "A polynomial is a mathematical expression that is constructed from one or more variables and constants, using only the operations of addition, subtraction, and multiplication.", ID1: "TF2MSp5C6cI", ID2: "7eyvCVzmwbQ"),
            Topic(title: "Polynomial factors and graphs", text: "Recognize characteristics of graphs of polynomial functions. Use factoring to ﬁnd zeros of polynomial functions. Identify zeros and their multiplicities.", ID1: "PIILLboBfbU", ID2: "0pwPqICHdf0"),
            Topic(title: "Nonlinear equation graphs", text: "A non-linear graph is a graph that is not a straight line.", ID1: "ZsAr2i81Kq0", ID2: "INlQwCJY3cY"),
            Topic(title: "Linear and quadratic systems", text: "Linear and quadratic systems are systems of equations with one linear equation and one quadratic equation. On the test, you're expected to find the solution(s) to systems like the one shown above either algebraically or graphically.", ID1: "c9H60WSptdE", ID2: "OL024xNFuro"),
            Topic(title: "Structure in expressions", text: "Structure in expressions questions require you to understand how to factor polynomials.", ID1: "8AUBPj7lKWY", ID2: "o10NpUW-koQ"),
            Topic(title: "Isolating quantities", text: "Write down the original equation. If needed, translate the word problem or given context into an equation.Perform the same operation on both sides of the equation to begin isolating the desired quantity.", ID1: "urnBqVLH1IQ", ID2: "5m7egk8Vjxw"),
            Topic(title: "Function notation", text: "Function notation is a simpler method of describing a function without a lengthy written explanation. The most frequently used function notation is f(x).", ID1: "nYF2_VbWKko", ID2: "MpOtiHgzSqQ")
        ]
    ),
    Category(
            title: "Problem Solving and Data Analysis",
            topics: [
                Topic(title: "Ratios, rates, and proportions", text: "A ratio compares the magnitude of two quantities. When the quantities have different units, then a ratio is called a rate. A proportion is a statement of equality between two ratios.", ID1: "96fLrtyAiD8", ID2: "qX0YQwCw5l4"),
                Topic(title: "Percents", text: "In mathematics, a percentage is a number or ratio expressed as a fraction of 100. It is often denoted using the percent sign.", ID1: "nPOp-2ChVeU", ID2: "-3CgfIqaIG8"),
                Topic(title: "Units", text: "Uses your knowledge of the relationships between units to convert from one unit to another.", ID1: "OCPR48zNNmw", ID2: "a9rpu3ByX8s"),
                Topic(title: "Table data", text: "A table is an arrangement of information or data, typically in rows and columns, or possibly in a more complex structure.", ID1: "1MDXQU-5rX4", ID2: "fr4UiCQk3rg"),
                Topic(title: "Scatterplots", text: "A scatter plot (aka scatter chart, scatter graph) uses dots to represent values for two different numeric variables. The position of each dot on the horizontal and vertical axis indicates values for an individual data point. Scatter plots are used to observe relationships between variables.", ID1: "j2HM_76Jqqk", ID2: "n7WWrOvTWE4"),
                Topic(title: "Key features of graphs", text: "Key features include: intercepts; intervals where the function is increasing, decreasing, positive, or negative; relative maximums and minimums; symmetries; and end behavior.", ID1: "pPQus7bJeXA", ID2: "15k1YX9aTbY"),
                Topic(title: "Linear and exponential growth", text: "Linear growth happens at a constant rate of change. Each increase in x brings a constant increase in y. Exponential growth does not happen at a constant rate of change. Rather, there is a percent of change, so the rate of growth is changing.", ID1: "h-f73ZkMhXY", ID2: "C_zzd1ey0Ek"),
                Topic(title: "Data inferences", text: "You will make a statistical inference by using data analysis to infer properties of graph, chart, or data set.", ID1: "vhEYMdD9woY", ID2: "8ZVW3aVtE80"),
                Topic(title: "Center, spread, and shape of distributions", text: "This will test you more on making conclusion based on the data of how deviated or spread it is.", ID1: "WR5IdTs2NeM", ID2: "WmV1Sve5iV0"),
                Topic(title: "Data collection and conclusions", text: "In carrying out a study or experiment, data is the result collected from testing. Conclusions are your interpretation of the data.", ID1: "hers3k7x5JA", ID2: "Xgi3ymh7M5E"),
            ]
        ),
        Category(
            title: "Additional Topics in Math",
            topics: [
                Topic(title: "Volume word problems", text: "Volume word problems focus on using the volume formulas of three-dimensional solids: rectangular prisms, cylinders, etc.", ID1: "q9_L7aTmbZw", ID2: "2cS-oBcmwAw"),
                Topic(title: "Right triangle word problems", text: "Solve word problems by modeling real-world (and not-so-real) situations as right triangles and using trigonometry.", ID1: "mZJD9ckjmao", ID2: "P0Skjxs-I4c"),
                Topic(title: "Congruence and similarity", text: "When two line segments have the same length, they are congruent. When two figures have the same shape and size, they are congruent. Similar means that the figures have the same shape, but not the same size.", ID1: "XcXmLHra3aA", ID2: "nKpHg25_AdM"),
                Topic(title: "Right triangle trigonometry", text: "This topics uses Pythagorean Theorem, c^2=a^2+b^2, and knowledge of trig identities.", ID1: "VNfWOjRCP6w", ID2: "ZE40akTB6oo"),
                Topic(title: "Angles, arc lengths, and trig functions", text: "The number of degrees of arc in a circle is 360 Degrees. The number of radians of arc in a circle is 2π", ID1: "0wxiIPPuPKM", ID2: "K32s5lAe6vs"),
                Topic(title: "Circle theorems", text: "1. The angle at the center is twice the angle at the circumference 2. The angle in a semicircle is a right angle 3. Angles in the same segment are equal 4. Opposite angles in a cyclic quadrilateral sum to 180° 5. The angle between the chord and the tangent is equal to the angle in the alternate segment ", ID1: "TWocMNAtmns", ID2: "iuDr-1EueWQ"),
                Topic(title: "Circle equations", text: "The formula for the equation of a circle is (x – h)2+ (y – k)2 = r2, where (h, k) represents the coordinates of the center of the circle, and r represents the radius of the circle. ", ID1: "WJAX-eEufB0", ID2: "CPe4bXmL6Oo"),
                Topic(title: "Complex numbers", text: "A complex number is a number of the form a + bi, where a and b are real numbers, and i is the  √−1.", ID1: "7f01PXG7kLg", ID2: "ChnR4qUzXK8")
            ]
        )

]



