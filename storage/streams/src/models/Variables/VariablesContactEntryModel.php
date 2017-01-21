<?php namespace Anomaly\Streams\Platform\Model\Variables;

use Anomaly\Streams\Platform\Entry\EntryModel;

class VariablesContactEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $table = 'variables_contact';

    protected $titleName = 'id';

    protected $rules = [
'street_address' => '',
'phone' => '',
'fax' => '',
];

    protected $fields = [
'street_address',
'phone',
'fax',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '30',
'namespace' => 'variables',
'slug' => 'contact',
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
'id' => '153',
'sort_order' => '149',
'stream_id' => '30',
'field_id' => '133',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '133',
'namespace' => 'variables',
'slug' => 'street_address',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:4:{s:4:"rows";s:1:"3";s:3:"min";N;s:3:"max";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '133',
'field_id' => '133',
'locale' => 'en',
'name' => 'Street Address',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '153',
'assignment_id' => '153',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '154',
'sort_order' => '150',
'stream_id' => '30',
'field_id' => '134',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '134',
'namespace' => 'variables',
'slug' => 'phone',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '134',
'field_id' => '134',
'locale' => 'en',
'name' => 'Phone',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '154',
'assignment_id' => '154',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '155',
'sort_order' => '151',
'stream_id' => '30',
'field_id' => '135',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '135',
'namespace' => 'variables',
'slug' => 'fax',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '135',
'field_id' => '135',
'locale' => 'en',
'name' => 'Fax',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '155',
'assignment_id' => '155',
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
'id' => '30',
'stream_id' => '30',
'locale' => 'en',
'name' => 'Contact',
'description' => '',
],
],
];

    
}
