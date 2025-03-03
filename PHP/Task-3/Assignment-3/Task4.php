<?php

echo "<pre>";
print_r(array_combine(
    array_map('filter_id', filter_list()), 
    filter_list()
));
echo "</pre>";

?>
