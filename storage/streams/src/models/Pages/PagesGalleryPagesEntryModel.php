<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesGalleryPagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'pages_gallery_pages';

    protected $titleName = 'id';

    protected $rules = [
'slogan_line_1' => '',
'banner_image' => '',
];

    protected $fields = [
'slogan_line_1',
'banner_image',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['banner_image'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesGalleryPagesEntryTranslationsModel';

    protected $stream = [
'id' => '32',
'namespace' => 'pages',
'slug' => 'gallery_pages',
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
'id' => '170',
'sort_order' => '166',
'stream_id' => '32',
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
'id' => '170',
'assignment_id' => '170',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '171',
'sort_order' => '167',
'stream_id' => '32',
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
'id' => '171',
'assignment_id' => '171',
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
'id' => '32',
'stream_id' => '32',
'locale' => 'en',
'name' => 'Gallery',
'description' => '',
],
],
];

    
public function bannerImage()
{

return $this->getFieldType('banner_image')->getRelation();
}

}
