<?php

date_default_timezone_set("Africa/Cairo");

echo date_default_timezone_get() . "<br>";


$d = date_create("2005-10-02");


date_modify($d, "+15 hours +15 minutes +15 seconds");

echo date_format($d, "Y, F, l 'dS' H:i:s") ;

?>
