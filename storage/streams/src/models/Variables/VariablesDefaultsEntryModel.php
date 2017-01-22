<?php namespace Anomaly\Streams\Platform\Model\Variables;

use Anomaly\Streams\Platform\Entry\EntryModel;

class VariablesDefaultsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $table = 'variables_defaults';

    protected $titleName = 'id';

    protected $rules = [
'banner_image' => '',
'slogan' => '',
];

    protected $fields = [
'banner_image',
'slogan',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['banner_image'];

    

    

    

    protected $stream = [
'id' => '33',
'namespace' => 'variables',
'slug' => 'defaults',
'prefix' => 'variables_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '0',
'config' => '',
'assignments' => [
[
'id' => '172',
'sort_order' => '168',
'stream_id' => '33',
'field_id' => '150',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '150',
'namespace' => 'variables',
'slug' => 'banner_image',
'type' => 'anomaly.field_type.file',
'config' => 'a:2:{s:7:"folders";a:1:{i:0;s:1:"1";}s:3:"max";s:3:"8.0";}',
'locked' => '0',
'translations' => [
[
'id' => '150',
'field_id' => '150',
'locale' => 'en',
'name' => 'Banner Image',
'placeholder' => '',
'warning' => '',
'instructions' => 'This banner image will be used on pages that do not have any other banner image selected.',
],
],
],
'translations' => [
[
'id' => '172',
'assignment_id' => '172',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '173',
'sort_order' => '169',
'stream_id' => '33',
'field_id' => '151',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '151',
'namespace' => 'variables',
'slug' => 'slogan',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";s:2:"40";s:12:"show_counter";b:1;s:9:"suggested";N;s:13:"default_value";s:19:"Siskiyou Rappellers";}',
'locked' => '0',
'translations' => [
[
'id' => '151',
'field_id' => '151',
'locale' => 'en',
'name' => 'Slogan',
'placeholder' => '',
'warning' => '',
'instructions' => 'This default slogan will appear in the banner at the top of a page, unless the page specifies its own slogan.',
],
],
],
'translations' => [
[
'id' => '173',
'assignment_id' => '173',
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
'id' => '33',
'stream_id' => '33',
'locale' => 'en',
'name' => 'Defaults',
'description' => 'These defaults apply to each page unless an individual page overrides it.',
],
],
];

    
public function bannerImage()
{

return $this->getFieldType('banner_image')->getRelation();
}

}
