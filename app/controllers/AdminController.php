<?php
/**
 *   app/controllers/AdminController.php
 * 
 * 
 *   Controller provides main actions which user can do in admin side
 *   
 * 
 * 
 */
class AdminController extends Controller
{
    
    /**
     * Display Categories list.
     *
     * @return Illuminate\View\View
     */
    public function getCategories($page = 1)
    {
        //writing page vars
        $basic_data['title'] = 'Categories';
        $page_data['page_head'] = 'Manage Categories';
        $page_data['page_intro'] = 'This page provides you to add, edit or delete categories';
        $page_data['edit_category_dlg_title'] = 'Create New Category';
        //by default page is 1
        if (Input::has('page'))
        {//but if page is defined override this value
            $page = Input::get('page');
        }
        //getting categories list
        $page_data = array_merge($page_data, CategoryController::getCategoriesList($page));
        $page_data = array_merge($page_data, CategoryController::getFirstLevelCategories());
        //drawing page
        return ViewController::displayPage($basic_data,'admin.categories',$page_data);
    }
    
    /**
     * saving_category
     *
     * @return Illuminate\View\View
     */
    public function saveCategory()
    {
        $rules = array('category_name' => 'required');
        if (!Input::has('category_id') || Input::get('category_id') == 0)
        {
            $rules = array_merge($rules,array('category_image' => 'required|mimes:jpeg,jpg,png,gif'));
        }
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails()) {
            if (!Input::has('category_id') || Input::get('category_id') == 0)
            {
                return Redirect::to(route('admin.categories'))->withErrors($validator)->withInput();
            }
            else
            {
                return Redirect::to('edit-category?category_id='.Input::get('category_id'))->withErrors($validator)->withInput();
            }
        }
        else
        {
            CategoryController::saveCategory(Input::all());
            return Self::getCategories();
        }
    }
    
    /**
     * Display manage categoreies page.
     *
     * @return Illuminate\View\View
     */
    public function getCategory()
    {
        if (Input::has('category_id'))
        {
             //writing page vars
            $basic_data['title'] = 'Categories';
            $page_data['page_head'] = 'Manage Categories';
            $page_data['page_intro'] = 'This page provides you to add, edit or delete categories';
            
            $page = 1;
            //by default page is 1
            if (Input::has('page'))
            {//but if page is defined override this value
                $page = Input::get('page');
            }
            $page_data = array_merge($page_data, CategoryController::getCategoriesList($page));
            $page_data = array_merge($page_data, CategoryController::getFirstLevelCategories(Input::get('category_id')));
            $page_data = array_merge($page_data, CategoryController::getCategory(Input::get('category_id')));
            $page_data['edit_category_dlg_title'] = 'Edit the "'.$page_data['category']['name'].'" category';
            $page_data['category_image_dir'] = CategoryController::$category_image_dir;
            return ViewController::displayPage($basic_data,'admin.categories',$page_data);
        }
        else 
        {
            return Self::getCategories();
        }
    }
    
    
    /**
     * Delete category.
     *
     * @return Illuminate\View\View
     */
    public function deleteCategory()
    {
        if (Input::has('category_id'))
        {
            CategoryController::deleteCategory(Input::get('category_id'));
        }
        return Self::getCategories();
    }
    
}

