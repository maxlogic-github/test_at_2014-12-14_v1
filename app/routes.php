<?php

//for non authorized users
    
Route::group(array('before' => 'guest'), function () 
{
    Route::get('/', function()
    {
        return Redirect::to('login');
    });
    
    Route::get('login', array(
        'as' => 'auth.login', 
        'uses' => 'AuthController@getLogin'
    ));
    
    Route::post('login', array(
        'uses' => 'AuthController@login'
    ));

});

//for authorized users

Route::group(array('before' => 'auth'), function ()
{
    //redirect root to categories manage page
    Route::get('/',function()
    {
        return Redirect::to('categories'); 
    });
    
    //route for categories manage page
    Route::get('categories', array(
        'as' => 'admin.categories',
        'uses' => 'AdminController@getCategories',
    ));

    //route for saving category page
    Route::post('save-category',array(
        'as' => 'admin.saveCategory',
        'uses' => 'AdminController@saveCategory',
    ));
    
    //route for editing category page
    Route::get('edit-category',array(
        'as' => 'admin.editCategory',
        'uses' => 'AdminController@getCategory'
    ));
    
    
    //route for deleting category
    Route::get('delete-category',array(
        'as' => 'admin.deleteCategory',
        'uses' => 'AdminController@deleteCategory'
    ));
    
    
    //route for logout
    Route::get('logout', array(
        'as' => 'auth.logout',
        'uses' => 'AuthController@logout'
    ));
}); 