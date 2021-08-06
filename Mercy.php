<?php

$host = "localhost";
$user = "root";
$pass = "123456789";
$db = "mercy";

$conn = mysqli_connect($host, $user, $pass, $db);

function getHammingDifference($str1, $str2)
{
    return count(array_diff_assoc(str_split(str_pad($str1, strlen($str2) - strlen($str1), ' ')), str_split(str_pad($str2, strlen($str1) - strlen($str2), ' '))));
}

if ($conn) {
    $name = "Oni Oluwaranti Mercy";
    $email = "mercyoni55@gmail.com";
    $slackUsername = "@Mercy";
    $biostack = "Genomic data science";
    $twitterUsername = "@LadyBio_dev";
    $hammingDifference = getHammingDifference($slackUsername, $twitterUsername);

    $query = "INSERT INTO `users` (`name`, `email`, `slack`, `biostack`, `twitter`, `hamming`) VALUES ('$name', '$email', '$slackUsername', '$biostack', '$twitterUsername', '$hammingDifference')";
    $insert = mysqli_query($conn, $query);

    $file = fopen("output/output.txt", "w");
    fwrite($file, "$name, $email, $slackUsername, $biostack, $twitterUsername, $hammingDifference");
}
