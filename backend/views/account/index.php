<?php
use yii\helpers\Html;
use yii\grid\GridView;
use backend\models\User;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\Customer;
/* @var $this yii\web\View */
/* @var $searchModel app\models\SchoolSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Manage Accounts';
$this->params['breadcrumbs'][] = $this->title;
?>
<div id="page_content">
    <div id="page_heading" data-uk-sticky="{ top: 48, media: 960 }">
        <div class="heading_actions">
            <?= Html::a('Create', ['create'], ['class' => 'md-btn md-btn-success md-btn-wave-light waves-effect waves-button waves-light']) ?>
        </div>
        <h1><?= Html::encode($this->title) ?></h1>
    </div>

    <div id="page_content_inner">
        
        <?php if(Yii::$app->session->hasFlash('success')): ?> 
            <div class="uk-alert uk-alert-success" data-uk-alert>
                <a href="#" class="uk-alert-close uk-close"></a>
                <?= Yii::$app->session->getFlash('success'); ?>
            </div>
        <?php endif; ?> 

        <?php  echo $this->render('_search', ['model' => $searchModel]); ?>
        <div class="md-card">
            <?php \yii\widgets\Pjax::begin(); ?>
            <?= GridView::widget([
                'dataProvider' => $dataProvider,
                'summary'=>"",
                'columns' => [
                    [
                        'label' => 'Customer',
                        'value' => function($data){
                            return Customer::getName($data->customer_id);
                        }
                    ],
                    'account_no',
                    'description_type',
                    'amount',
                    'account_date:date',
                    /*[
                        'attribute' => 'amount', 
                        'label' => 'Amount',
                        'value' => function ($model, $key, $index, $widget) {
                                return Yii::$app->formatter->asCurrency($model->amount, 'INR');
                                },
                        'footer'=>"<strong>".$model->getTotals($model->search()->getKeys())." </strong>",
                    ],*/
                    ['class' => 'yii\grid\ActionColumn',
                            'header'=>'Action', 
                            'headerOptions' => ['width' => '150'],
                            'template' => '{update}'
                        ]
                ],
            ]); ?>
            <?php \yii\widgets\Pjax::end(); ?>
        </div>
    </div>

</div>