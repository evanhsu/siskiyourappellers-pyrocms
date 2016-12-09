<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesLinkListPagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'pages_link_list_pages';

    protected $titleName = 'id';

    protected $rules = [
'banner_image' => '',
'slogan_line_1' => '',
'menus' => '',
];

    protected $fields = [
'banner_image',
'slogan_line_1',
'menus',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['banner_image', 'menus'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesLinkListPagesEntryTranslationsModel';

    protected $stream = [
'id' => '28',
'namespace' => 'pages',
'slug' => 'link_list_pages',
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
'id' => '140',
'sort_order' => '138',
'stream_id' => '28',
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
'id' => '140',
'assignment_id' => '140',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '141',
'sort_order' => '139',
'stream_id' => '28',
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
'id' => '141',
'assignment_id' => '141',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '143',
'sort_order' => '141',
'stream_id' => '28',
'field_id' => '127',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '127',
'namespace' => 'pages',
'slug' => 'menus',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:4:{s:7:"related";s:67:"Anomaly\Streams\Platform\Model\Navigation\NavigationMenusEntryModel";s:4:"mode";s:4:"tags";s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => '127',
'field_id' => '127',
'locale' => 'en',
'name' => 'Menus',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '143',
'assignment_id' => '143',
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
'id' => '28',
'stream_id' => '28',
'locale' => 'en',
'name' => 'Link List',
'description' => '',
],
],
];

    
public function bannerImage()
{

return $this->getFieldType('banner_image')->getRelation();
}

public function menus()
{

return $this->getFieldType('menus')->getRelation();
}

}
