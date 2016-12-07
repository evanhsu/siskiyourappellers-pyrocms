<?php namespace Anomaly\Streams\Platform\Model\Posts;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class PostsLinkPostsEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'posts_link_posts_translations';
}
