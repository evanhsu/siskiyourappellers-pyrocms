<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesJobsPagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'pages_jobs_pages';

    protected $titleName = 'id';

    protected $rules = [
'banner_image' => '',
'slogan_line_1' => '',
'temp_seasonal_job_vacancies' => '',
'permanent_job_vacancies' => '',
'content' => '',
];

    protected $fields = [
'banner_image',
'slogan_line_1',
'temp_seasonal_job_vacancies',
'permanent_job_vacancies',
'content',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['banner_image'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesJobsPagesEntryTranslationsModel';

    protected $stream = [
'id' => '29',
'namespace' => 'pages',
'slug' => 'jobs_pages',
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
'id' => '144',
'sort_order' => '141',
'stream_id' => '29',
'field_id' => '121',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '121',
'namespace' => 'pages',
'slug' => 'banner_image',
'type' => 'anomaly.field_type.file',
'config' => 'a:2:{s:7:"folders";a:1:{i:0;s:1:"1";}s:3:"max";s:3:"7.0";}',
'locked' => '0',
'translations' => [
[
'id' => '121',
'field_id' => '121',
'locale' => 'en',
'name' => 'Banner Image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '144',
'assignment_id' => '144',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '145',
'sort_order' => '142',
'stream_id' => '29',
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
'id' => '145',
'assignment_id' => '145',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '146',
'sort_order' => '143',
'stream_id' => '29',
'field_id' => '128',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '128',
'namespace' => 'pages',
'slug' => 'temp_seasonal_job_vacancies',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:4:{s:7:"buttons";a:8:{i:0;s:6:"format";i:1;s:4:"bold";i:2;s:6:"italic";i:3;s:7:"deleted";i:4;s:5:"lists";i:5;s:4:"link";i:6;s:14:"horizontalrule";i:7;s:9:"underline";}s:7:"plugins";a:8:{i:0;s:9:"alignment";i:1;s:11:"inlinestyle";i:2;s:5:"table";i:3;s:5:"video";i:4;s:11:"filemanager";i:5;s:12:"imagemanager";i:6;s:6:"source";i:7;s:10:"fullscreen";}s:6:"height";s:3:"500";s:11:"line_breaks";b:0;}',
'locked' => '0',
'translations' => [
[
'id' => '128',
'field_id' => '128',
'locale' => 'en',
'name' => 'Temp/Seasonal (1039) Job Vacancies',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '146',
'assignment_id' => '146',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '147',
'sort_order' => '144',
'stream_id' => '29',
'field_id' => '129',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '129',
'namespace' => 'pages',
'slug' => 'permanent_job_vacancies',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:4:{s:7:"buttons";a:8:{i:0;s:6:"format";i:1;s:4:"bold";i:2;s:6:"italic";i:3;s:7:"deleted";i:4;s:5:"lists";i:5;s:4:"link";i:6;s:14:"horizontalrule";i:7;s:9:"underline";}s:7:"plugins";a:8:{i:0;s:9:"alignment";i:1;s:11:"inlinestyle";i:2;s:5:"table";i:3;s:5:"video";i:4;s:11:"filemanager";i:5;s:12:"imagemanager";i:6;s:6:"source";i:7;s:10:"fullscreen";}s:6:"height";s:3:"500";s:11:"line_breaks";b:0;}',
'locked' => '0',
'translations' => [
[
'id' => '129',
'field_id' => '129',
'locale' => 'en',
'name' => 'Permanent (PSE) Job Vacancies',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '147',
'assignment_id' => '147',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '148',
'sort_order' => '145',
'stream_id' => '29',
'field_id' => '41',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '41',
'namespace' => 'pages',
'slug' => 'content',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:0:{}',
'locked' => '0',
'translations' => [
[
'id' => '41',
'field_id' => '41',
'locale' => 'en',
'name' => 'anomaly.module.pages::field.content.name',
'placeholder' => 'anomaly.module.pages::field.content.placeholder',
'warning' => 'anomaly.module.pages::field.content.warning',
'instructions' => 'anomaly.module.pages::field.content.instructions',
],
],
],
'translations' => [
[
'id' => '148',
'assignment_id' => '148',
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
'id' => '29',
'stream_id' => '29',
'locale' => 'en',
'name' => 'Jobs',
'description' => '',
],
],
];

    
public function bannerImage()
{

return $this->getFieldType('banner_image')->getRelation();
}

}
