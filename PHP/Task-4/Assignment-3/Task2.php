<?php

setcookie("site[layout]", "boxed", time() + (60 * 60 * 24 * 60));
setcookie("site[font]", "Swat", time() + (60 * 60 * 24 * 60));
setcookie("site[color]", "blue", time() + (60 * 60 * 24 * 60)); 
echo "<pre>";
print_r($_COOKIE);
echo "</pre>";
echo "Your Color Is {$_COOKIE['site']['color']} and your font is {$_COOKIE['site']['font']}";

?>
