<?php
$studentMarks = array(
68, 70, 72, 49, 60, 79, 82, 73, 75, 77, 73, 58, 63, 79, 78,
68, 72,73, 80, 34, 68, 72, 56, 23, 73, 45, 24, 85, 89, 83);
echo "Number of students: ",sizeof($studentMarks),"\n";
echo "Average mark: ",array_sum($studentMarks)/sizeof($studentMarks),"\n";
echo "Top mark: ",max($studentMarks),"\n";
echo "Least mark: ",min($studentMarks),"\n";
rsort($studentMarks);
echo "Top 5 marks: ",implode(',', array_slice($studentMarks, 0, 5)), "\n";
sort($studentMarks);
echo "Lowest 5 marks: ",implode(',', array_slice($studentMarks, 0, 5)), "\n";
$str=array();
for ($i=0; $i<sizeof($studentMarks); $i++) {
    if ($studentMarks[$i]<50) {
        array_push($str, $studentMarks[$i]);
    }
}
echo "Marks less than 50: ",implode(',', $str),"\n";
/*9. $studentMarks = array(
68, 70, 72, 49, 60, 79, 82, 73, 75, 77, 73, 58, 63, 79, 78,
68, 72, 73, 80, 34, 68, 72, 56, 23, 73, 45, 24, 85, 89, 83
);
Create an array of marks- Get total number of students
- Calculate the average mark
- Get the highest and lowest mark
- Get top5
- Get bottom5
- Get number of students with mark lower than 50*/
