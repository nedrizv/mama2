<?php
return [
    'adminEmail' => 'admin@example.com',
    'supportEmail' => 'support@example.com',
    'user.passwordResetTokenExpire' => 3600,
	'params' => [
		// Profile images paths
		  'profileImagesPath'=>'http://mamabrass.local/upload/profile/',
		  'profileImagesMediumPath'=>'http://mamabrass.local/upload/profile/medium/',
		  'profileImagesSmallPath'=>'http://mamabrass.local/upload/profile/small/',
		  'upload_profileImagePath'=>$_SERVER['DOCUMENT_ROOT'].'/upload/profile/',
	 
	 // No images pasths
		  'noImagesPath'=>'http://mamabrass.local/upload/no_images/',

]
];
