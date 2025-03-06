<?php

$filePath = "E:\Random\Cars.3.2017.720p.WEB-DL.akoam.com.mkv";
$fileSizeBytes = filesize($filePath);

 $fileSizeMB = $fileSizeBytes / 1024 / 1024;
 $fileSizeKB = $fileSizeBytes / 1024;

  echo "Size In Megabyte Is " . round($fileSizeMB, 2) . "<br>";
    echo "Size In Kilobyte Is " . round($fileSizeKB, 2) . "<br>";
