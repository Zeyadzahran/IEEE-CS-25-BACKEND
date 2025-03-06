<?php


date_default_timezone_set("Africa/Cairo");

$epoch_time = strtotime("1970-01-01");
$target_time = time();


$diff_seconds = $target_time - $epoch_time;


$diff_days = $diff_seconds / (60 * 60 * 24);
$diff_years = $diff_days / 365.25;

echo "\"From Epoch Time Till 1990-10-01 Is Approximately " . number_format($diff_days, 1) . " Days<br>";
echo "\"From Epoch Time Till 1990-10-01 Is Approximately " . number_format($diff_years, 1) . " Years<br>";

?>
