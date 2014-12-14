<?php
/**
 *    app/models/Category.php
 */
class Category extends Eloquent
{
    //model has timestamps fields
    public $timestamps = TRUE;
    //model items must deletes safully
    protected $softDelete = TRUE;
    
    /**
     * Model belongs to itself by the parent_id field
     */
    public function parentCategory()
    {
        return $this->belongsTo('Category','parent_id','id');
    }
    
}
