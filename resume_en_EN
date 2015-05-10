<?php
$cv = array (
		'Name' => 'Evgeniy Zarechenskiy',
		$personal_data = array (
				'Job title' => '',
				'birthday' => array (
						'09',
						'03',
						'1985' 
				),
				'City' => 'Kharkiv',
				'Phone' => '+38(096)46-86-205',
				'email' => 'misterjaaay@gmail.com' 
		),
		$positions = array (
				array (
						'title' => 'System Administrator/ServiceDesk Engineer',
						'period' => 'August 2013 – current time',
						'company name' => 'Oracle Corporation (formerly TOA technologies)',
						'duties' => array (
								'1 supporting the corporate product ETAdirect',
								'2 manualshchina' 
						) 
				),
				array (
						'title' => 'Paraglider instructor, the head of the flying school',
						'period' => 'September 2012 – August 2013',
						'company name' => 'Speed riding school Pro Speed Riding (extreme sports)',
						'duties' => array (
								'1 supporting the corporate product ETAdirect',
								'2 Creating and optimizing of the corporate web page (speedriding.pro)' 
						) 
				),
				array (
						'title' => 'Paraglider instructor, the head of the flying school',
						'period' => 'September 2012 – August 2013',
						'company name' => 'Speed riding school Pro Speed Riding (extreme sports)',
						'duties' => array (
								'1 supporting the corporate product ETAdirect',
								'2 Creating and optimizing of the corporate web page (speedriding.pro)'
						)
				)
		) 
);

$count = $personal_data [birthday];
$sum = array_sum ( $count );
$letterArray = array (
		'A',
		'E',
		'I',
		'О',
		'U',
		'Y' 
);
$name = 'Evgeniy';
if (in_array ( $name [0], $letterArray ) && ($sum % 2) == 0) {
	$personal_data ['Job title'] = "Noob PHP";
} elseif (in_array ( $name [0], $letterArray ) && ($sum % 2) == 1) {
	$personal_data ['Job title'] = 'Intern PHP';
} elseif (! in_array ( $name [0], $letterArray ) && ($sum % 2) == 1) {
	$personal_data ['Job title'] = "Intern PHP developer";
} elseif (! in_array ( $name [0], $letterArray ) && ($sum % 2) == 0) {
	$personal_data ['Job title'] = "Junior PHP developer";
}
;

echo "<h1>";
echo $cv ['Name'];
echo "</h1>";

foreach ( $personal_data as $a => $b ) {
	if (is_array ( $b )) {
		$b = implode ( '-', $personal_data ['birthday'] );
	}
	echo "<ul>";
	echo "<li>$a: $b</li>";
	echo "</ul>";
};

foreach ( $positions as $position ) {
	echo "<br /> *************";
	foreach ( $position as $key => $value ) {
		if (is_array($value)){
			echo "<dt></dt><br /><dd><b>$key:</b> </dd>";
		}else echo "<dt></dt><br /><dd><b>$key:</b> $value </dd>";
		foreach ( $value as $key1 => $val1 ) {
			echo "<dt></dt><br /><dd>&nbsp;&nbsp;&nbsp;     $val1</dd>";
		}
	}
}
;

