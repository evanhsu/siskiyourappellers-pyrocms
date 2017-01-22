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
'email' => '',
'facebook_page_url' => '',
'google_maps_iframe' => '',
'latitude' => '',
'longitude' => '',
];

    protected $fields = [
'street_address',
'phone',
'fax',
'email',
'facebook_page_url',
'google_maps_iframe',
'latitude',
'longitude',
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
[
'id' => '156',
'sort_order' => '152',
'stream_id' => '30',
'field_id' => '136',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '136',
'namespace' => 'variables',
'slug' => 'email',
'type' => 'anomaly.field_type.email',
'config' => 'a:1:{s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '136',
'field_id' => '136',
'locale' => 'en',
'name' => 'Email',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '156',
'assignment_id' => '156',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '157',
'sort_order' => '153',
'stream_id' => '30',
'field_id' => '137',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '137',
'namespace' => 'variables',
'slug' => 'facebook_page_url',
'type' => 'anomaly.field_type.url',
'config' => 'a:1:{s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '137',
'field_id' => '137',
'locale' => 'en',
'name' => 'Facebook Page URL',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '157',
'assignment_id' => '157',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '158',
'sort_order' => '154',
'stream_id' => '30',
'field_id' => '138',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '138',
'namespace' => 'variables',
'slug' => 'google_maps_iframe',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '138',
'field_id' => '138',
'locale' => 'en',
'name' => 'Google Maps iframe',
'placeholder' => '',
'warning' => '',
'instructions' => 'Paste the link provided by Google Maps, beginning with `iframe src=http...` and ending with `/iframe`.',
],
],
],
'translations' => [
[
'id' => '158',
'assignment_id' => '158',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '159',
'sort_order' => '155',
'stream_id' => '30',
'field_id' => '139',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '139',
'namespace' => 'variables',
'slug' => 'latitude',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '139',
'field_id' => '139',
'locale' => 'en',
'name' => 'Latitude',
'placeholder' => 'N 43° 38.2580\'',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '159',
'assignment_id' => '159',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '160',
'sort_order' => '156',
'stream_id' => '30',
'field_id' => '140',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '140',
'namespace' => 'variables',
'slug' => 'longitude',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '140',
'field_id' => '140',
'locale' => 'en',
'name' => 'Longitude',
'placeholder' => 'W 121° 53.2254\'',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '160',
'assignment_id' => '160',
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
