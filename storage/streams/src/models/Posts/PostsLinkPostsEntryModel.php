<?php namespace Anomaly\Streams\Platform\Model\Posts;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PostsLinkPostsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'posts_link_posts';

    protected $titleName = 'id';

    protected $rules = [
'link_description' => '',
'url' => '',
];

    protected $fields = [
'link_description',
'url',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Posts\PostsLinkPostsEntryTranslationsModel';

    protected $stream = [
'id' => '27',
'namespace' => 'posts',
'slug' => 'link_posts',
'prefix' => 'posts_',
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
'id' => '136',
'sort_order' => '136',
'stream_id' => '27',
'field_id' => '123',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '123',
'namespace' => 'posts',
'slug' => 'link_description',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '123',
'field_id' => '123',
'locale' => 'en',
'name' => 'Link Description',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '136',
'assignment_id' => '136',
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => '137',
'sort_order' => '137',
'stream_id' => '27',
'field_id' => '122',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '122',
'namespace' => 'posts',
'slug' => 'url',
'type' => 'anomaly.field_type.url',
'config' => 'a:1:{s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => '122',
'field_id' => '122',
'locale' => 'en',
'name' => 'URL',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '137',
'assignment_id' => '137',
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
'id' => '27',
'stream_id' => '27',
'locale' => 'en',
'name' => 'Link',
'description' => '',
],
],
];

    
}
