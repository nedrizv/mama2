<?php
use yii\helpers\Html;
use yii\helpers\Url;
?>
<header id="header_main">
    <div class="header_main_content">
        <nav class="uk-navbar">
                            
            <!-- main sidebar switch -->
            <a href="#" id="sidebar_main_toggle" class="sSwitch sSwitch_left">
                <span class="sSwitchIcon"></span>
            </a>
            
            
            
            <div class="uk-navbar-flip">
                <ul class="uk-navbar-nav user_actions">
                    <!-- <li><a href="#" id="full_screen_toggle" class="user_action_icon uk-visible-large"><i class="material-icons md-24 md-light">&#xE5D0;</i></a></li> -->
                    <li><a href="#" alt="Search" id="main_search_btn" class="user_action_icon"><i class="search md-24 md-light">
                    <?= Html::img(Yii::getAlias('@url')."/img/search-blue1.png",[ 'style'=>'height:32px;', 'alt'=>'Search']); ?></i></a></li>
                    
                    <li data-uk-dropdown="{mode:'click',pos:'bottom-right'}">
						
                        <a href="#" class="user_action_image">
							<?php $EmpInfo = backend\models\User::findOne(['user_id'=>Yii::$app->user->id]);  ?>
							<?= Html::img($EmpInfo->getAdmPhoto($EmpInfo->profile_image),[ 'class'=>'md-user-image', 'style'=>'width:40px; height:40px;', 'alt'=>'My Profile']); ?>
						</a>
                        <div class="uk-dropdown uk-dropdown-small">
                            <ul class="uk-nav js-uk-prevent">
								<li><?= Html::a('View Profile', ['user/view','id'=>Yii::$app->user->id])?></li>
                                <li><?= Html::a('Edit Profile', ['user/update','id'=>Yii::$app->user->id])?></li>
                                <li><?= Html::a('Change Password', ['user/update_password','id'=>Yii::$app->user->id])?></li>
                                <li><?= Html::a('Logout', ['/site/logout']) ?></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="header_main_search_form">
        <i class="md-icon header_main_search_close material-icons" style="top:0px;"><?= Html::img(Yii::getAlias('@url')."/img/close-sq.png",[ 'style'=>'height:27px;', 'alt'=>'Search']); ?></i>
        <form class="uk-form">
            <input type="text" class="header_main_search_input" />
            <button class="header_main_search_btn uk-button-link" style="top:-4px;"><i class="md-icon material-icons"><?= Html::img(Yii::getAlias('@url')."/img/search-blue1.png",[ 'style'=>'height:32px;', 'alt'=>'Search']); ?></i></button>
        </form>
    </div>
</header>