//Change name and then create a custom transformer. 

namespace FSharp.MyLibraries
open System.IO  
open FSharp.MyLibraries.NumberParser

module ParseToJs = 
    
    let toExtension = ".js"
    let fromExtention = ".txt"

    let fromPath = "c:\Users\Thomas\Documents\GitHub\practice\pe\problemsets"
    let toPath = "c:\Users\Thomas\Documents\GitHub\practice\pe\problemsets\js"

    let problemName = "problem0008"
    
    let constructedFromPath name = fromPath + @"\" + name + fromExtention
    let constructedToPath = toPath + @"\" + problemName + toExtension
        

    let createJavascript mainData testData1 testData2=    
        [
        "var problemSets;";
        "(function(problemSets) {";
        "    var " + problemName + " = (function() {";
        "        function " + problemName + "() {}";
        "        " + problemName + ".prototype.data = function () {";
        "            return " + mainData + ";";
        "        };";
        "        " + problemName + ".prototype.test1 = function () {";
        "            return " + testData1 + ";";
        "        };";
        "        " + problemName + ".prototype.test2 = function () {";
        "            return " + testData2 + ";";
        "        };";
        "        return " + problemName + ";";
        "    })();";
        "    problemSets." + problemName + " = " + problemName + ";";
        "})(problemSets || (problemSets = {}));"]


    let transformInputFor0008 input = 
        Seq.toList input
        |> List.reduce (+)
        |> fun elem -> "'" + elem + "'"

    let transformInputFor0011 input =
        Seq.toList input 
        |> List.map(fun elem -> parseSpaceDelimitedString elem) 
        |> List.map(fun elem -> elem |> List.map(fun el -> el.ToString())) 
        |> List.map(fun elem -> elem |> List.reduce(fun acc el -> acc + ", " + el))
        |> List.map(fun elem -> "[" + elem + "]")
        |> List.reduce (fun acc elem -> acc + ", " + elem) 
        |> fun elem -> "[" + elem + "]"


    let transformer = transformInputFor0008

    let go = 
        let data = File.ReadAllLines(constructedFromPath problemName) |> transformer
        let test1 = File.ReadAllLines(constructedFromPath (problemName + "test1")) |> transformer
        let test2 = File.ReadAllLines(constructedFromPath (problemName + "test2")) |> transformer

        let output = createJavascript data test1 test2
        File.WriteAllLines(constructedToPath, output)
            
        
           
