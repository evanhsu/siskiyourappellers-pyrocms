<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesHomePagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'pages_home_pages';

    protected $titleName = 'id';

    protected $rules = [
'about_us_left_column' => '',
'about_us_center_column' => '',
'about_us_right_column' => '',
'slogan_line_1' => '',
'slogan_line_2' => '',
'content_left_column' => '',
'content_middle_column' => '',
'content_right_column' => '',
];

    protected $fields = [
'about_us_left_column',
'about_us_center_column',
'about_us_right_column',
'slogan_line_1',
'slogan_line_2',
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
'id' => '127',
'sort_order' => '127',
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
'sort_order' => '128',
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
'sort_order' => '129',
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
'id' => '130',
'sort_order' => '130',
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
'sort_order' => '131',
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
'id' => '150',
'sort_order' => '146',
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
'sort_order' => '147',
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
'sort_order' => '148',
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
