<?php
/**
 * poche, a read it later open source system
 *
 * @category   poche
 * @author     Nicolas Lœuillet <support@inthepoche.com>
 * @copyright  2013
 * @license    http://www.wtfpl.net/ see COPYING file
 */

interface Store {
    
    public function add($url, $title, $content);

    public function retrieveAll() ;

    public function retrieveOneById($id) ;

    public function retrieveOneByURL($url);

    public function deleteById($id);

    public function favoriteById($id);

    public function archiveById($id);

    public function getEntriesByView($view);

    public function getLastId();

    public function updateContentById($id);
}
