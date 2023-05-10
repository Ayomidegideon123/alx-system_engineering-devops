#puppet manifest to rename a file and create a file

exec { 'fix-wordpress':

  environment => ['DIR=/var/www/html/wp-settings.php',

                  'OLD=phpp',

                  'NEW=php'],

  command     => 'sudo sed -i "s/$OLD/$NEW/" $DIR',

  path        => ['/usr/bin', '/bin'],

  returns     => [0, 1]

}
