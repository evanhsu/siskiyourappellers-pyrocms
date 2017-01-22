<?php namespace Anomaly\Streams\Platform\Model\Posts;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PostsPhotoPostsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'posts_photo_posts';

    protected $titleName = 'id';

    protected $rules = [
'photo' => '',
];

    protected $fields = [
'photo',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['photo'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Posts\PostsPhotoPostsEntryTranslationsModel';

    protected $stream = [
'id' => '31',
'namespace' => 'posts',
'slug' => 'photo_posts',
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
'id' => '169',
'sort_order' => '165',
'stream_id' => '31',
'field_id' => '149',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => '0',
'required' => '0',
'translatable' => '0',
'field' => [
'id' => '149',
'namespace' => 'posts',
'slug' => 'photo',
'type' => 'anomaly.field_type.file',
'config' => 'a:2:{s:7:"folders";a:1:{i:0;s:1:"1";}s:3:"max";s:3:"8.0";}',
'locked' => '0',
'translations' => [
[
'id' => '149',
'field_id' => '149',
'locale' => 'en',
'name' => 'Photo',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => '169',
'assignment_id' => '169',
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
'id' => '31',
'stream_id' => '31',
'locale' => 'en',
'name' => 'Photo',
'description' => '',
],
],
];

    
public function photo()
{

return $this->getFieldType('photo')->getRelation();
}

}
