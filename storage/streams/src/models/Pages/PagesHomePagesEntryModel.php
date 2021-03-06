<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesHomePagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'pages_home_pages';

    protected $titleName = 'id';

    protected $rules = [
'slogan_line_1' => '',
'slogan_line_2' => '',
'about_us_left_column' => '',
'about_us_center_column' => '',
'about_us_right_column' => '',
'services_1_title' => '',
'services_1' => '',
'services_2_title' => '',
'services_2' => '',
'services_3_title' => '',
'services_3' => '',
'services_4_title' => '',
'services_4' => '',
'content_left_column' => '',
'content_middle_column' => '',
'content_right_column' => '',
];

    protected $fields = [
'slogan_line_1',
'slogan_line_2',
'about_us_left_column',
'about_us_center_column',
'about_us_right_column',
'services_1_title',
'services_1',
'services_2_title',
'services_2',
'services_3_title',
'services_3',
'services_4_title',
'services_4',
'content_left_column',
'content_middle_column',
'content_right_column',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesHomePagesEntryTranslationsModel';

    protected $stream = [
'id' => '26',
'namespace' => 'pages',
'slug' => 'home_pages',
'prefix' => 'pages_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '1',
'sortable' => '0',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => '130',
'sort_order' => '1',
'stream_id' => '26',
'field_id' => '116',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '116',
'namespace' => 'pages',
'slug' => 'slogan_line_1',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:9:"suggested";s:2:"25";s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '116',
'field_id' => '116',
'locale' => 'en',
'name' => 'Slogan (Line 1)',
'placeholder' => '',
'warning' => '',
'instructions' => 'This will be displayed in a smaller, italic heading font on the home page.',
],
],
],
'translations' => [
[
'id' => '130',
'assignment_id' => '130',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '131',
'sort_order' => '2',
'stream_id' => '26',
'field_id' => '117',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '117',
'namespace' => 'pages',
'slug' => 'slogan_line_2',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:9:"suggested";s:2:"15";s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '117',
'field_id' => '117',
'locale' => 'en',
'name' => 'Slogan (Line 2)',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '131',
'assignment_id' => '131',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '127',
'sort_order' => '3',
'stream_id' => '26',
'field_id' => '118',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '118',
'namespace' => 'pages',
'slug' => 'about_us_left_column',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:4:{s:4:"rows";s:1:"6";s:3:"min";N;s:3:"max";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '118',
'field_id' => '118',
'locale' => 'en',
'name' => 'About Us (Left Column)',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '127',
'assignment_id' => '127',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '128',
'sort_order' => '4',
'stream_id' => '26',
'field_id' => '119',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '119',
'namespace' => 'pages',
'slug' => 'about_us_center_column',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:4:{s:4:"rows";s:1:"6";s:3:"min";N;s:3:"max";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '119',
'field_id' => '119',
'locale' => 'en',
'name' => 'About Us (Center Column)',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '128',
'assignment_id' => '128',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '129',
'sort_order' => '5',
'stream_id' => '26',
'field_id' => '120',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '120',
'namespace' => 'pages',
'slug' => 'about_us_right_column',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:4:{s:4:"rows";s:1:"6";s:3:"min";N;s:3:"max";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '120',
'field_id' => '120',
'locale' => 'en',
'name' => 'About Us (Right Column)',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '129',
'assignment_id' => '129',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '165',
'sort_order' => '6',
'stream_id' => '26',
'field_id' => '145',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '145',
'namespace' => 'pages',
'slug' => 'services_1_title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";s:2:"25";s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '145',
'field_id' => '145',
'locale' => 'en',
'name' => 'Service 1 Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '165',
'assignment_id' => '165',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '161',
'sort_order' => '7',
'stream_id' => '26',
'field_id' => '141',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '141',
'namespace' => 'pages',
'slug' => 'services_1',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:4:{s:4:"rows";s:1:"4";s:3:"min";N;s:3:"max";s:3:"225";s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '141',
'field_id' => '141',
'locale' => 'en',
'name' => 'Services 1',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '161',
'assignment_id' => '161',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '166',
'sort_order' => '8',
'stream_id' => '26',
'field_id' => '146',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '146',
'namespace' => 'pages',
'slug' => 'services_2_title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";s:2:"25";s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '146',
'field_id' => '146',
'locale' => 'en',
'name' => 'Service 2 Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '166',
'assignment_id' => '166',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '162',
'sort_order' => '9',
'stream_id' => '26',
'field_id' => '142',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '142',
'namespace' => 'pages',
'slug' => 'services_2',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:4:{s:4:"rows";s:1:"4";s:3:"min";N;s:3:"max";s:3:"225";s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '142',
'field_id' => '142',
'locale' => 'en',
'name' => 'Services 2',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '162',
'assignment_id' => '162',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '167',
'sort_order' => '10',
'stream_id' => '26',
'field_id' => '147',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '147',
'namespace' => 'pages',
'slug' => 'services_3_title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";s:2:"25";s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '147',
'field_id' => '147',
'locale' => 'en',
'name' => 'Service 3 Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '167',
'assignment_id' => '167',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '163',
'sort_order' => '11',
'stream_id' => '26',
'field_id' => '143',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '143',
'namespace' => 'pages',
'slug' => 'services_3',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:4:{s:4:"rows";s:1:"4";s:3:"min";N;s:3:"max";s:3:"225";s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '143',
'field_id' => '143',
'locale' => 'en',
'name' => 'Services 3',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '163',
'assignment_id' => '163',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '168',
'sort_order' => '12',
'stream_id' => '26',
'field_id' => '148',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '148',
'namespace' => 'pages',
'slug' => 'services_4_title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";s:2:"25";s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '148',
'field_id' => '148',
'locale' => 'en',
'name' => 'Service 4 Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '168',
'assignment_id' => '168',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '164',
'sort_order' => '13',
'stream_id' => '26',
'field_id' => '144',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '144',
'namespace' => 'pages',
'slug' => 'services_4',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:4:{s:4:"rows";s:1:"4";s:3:"min";N;s:3:"max";s:3:"225";s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '144',
'field_id' => '144',
'locale' => 'en',
'name' => 'Services 4',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '164',
'assignment_id' => '164',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '150',
'sort_order' => '14',
'stream_id' => '26',
'field_id' => '130',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '130',
'namespace' => 'pages',
'slug' => 'content_left_column',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:4:{s:7:"buttons";a:8:{i:0;s:6:"format";i:1;s:4:"bold";i:2;s:6:"italic";i:3;s:7:"deleted";i:4;s:5:"lists";i:5;s:4:"link";i:6;s:14:"horizontalrule";i:7;s:9:"underline";}s:7:"plugins";a:8:{i:0;s:9:"alignment";i:1;s:11:"inlinestyle";i:2;s:5:"table";i:3;s:5:"video";i:4;s:11:"filemanager";i:5;s:12:"imagemanager";i:6;s:6:"source";i:7;s:10:"fullscreen";}s:6:"height";s:3:"200";s:11:"line_breaks";b:0;}',
'locked' => '0',
'translations' => [
[
'id' => '130',
'field_id' => '130',
'locale' => 'en',
'name' => 'Content Left Column',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '150',
'assignment_id' => '150',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '151',
'sort_order' => '15',
'stream_id' => '26',
'field_id' => '131',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '131',
'namespace' => 'pages',
'slug' => 'content_middle_column',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:4:{s:7:"buttons";a:8:{i:0;s:6:"format";i:1;s:4:"bold";i:2;s:6:"italic";i:3;s:7:"deleted";i:4;s:5:"lists";i:5;s:4:"link";i:6;s:14:"horizontalrule";i:7;s:9:"underline";}s:7:"plugins";a:8:{i:0;s:9:"alignment";i:1;s:11:"inlinestyle";i:2;s:5:"table";i:3;s:5:"video";i:4;s:11:"filemanager";i:5;s:12:"imagemanager";i:6;s:6:"source";i:7;s:10:"fullscreen";}s:6:"height";s:3:"200";s:11:"line_breaks";b:0;}',
'locked' => '0',
'translations' => [
[
'id' => '131',
'field_id' => '131',
'locale' => 'en',
'name' => 'Content Middle Column',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '151',
'assignment_id' => '151',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '152',
'sort_order' => '16',
'stream_id' => '26',
'field_id' => '132',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '132',
'namespace' => 'pages',
'slug' => 'content_right_column',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:4:{s:7:"buttons";a:8:{i:0;s:6:"format";i:1;s:4:"bold";i:2;s:6:"italic";i:3;s:7:"deleted";i:4;s:5:"lists";i:5;s:4:"link";i:6;s:14:"horizontalrule";i:7;s:9:"underline";}s:7:"plugins";a:8:{i:0;s:9:"alignment";i:1;s:11:"inlinestyle";i:2;s:5:"table";i:3;s:5:"video";i:4;s:11:"filemanager";i:5;s:12:"imagemanager";i:6;s:6:"source";i:7;s:10:"fullscreen";}s:6:"height";s:3:"200";s:11:"line_breaks";b:0;}',
'locked' => '0',
'translations' => [
[
'id' => '132',
'field_id' => '132',
'locale' => 'en',
'name' => 'Content Right Column',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '152',
'assignment_id' => '152',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
],
'translations' => [
[
'id' => '26',
'stream_id' => '26',
'locale' => 'en',
'name' => 'Home',
'description' => '',
],
],
];

    
}
