<?php
/**
 *    app/controllers/CategoryController.php
 * 
 *    Controller implements operations with categories
 *  
 */
class CategoryController extends Controller
{
    //let the page has 30 items
    static public $items_per_page = 30;
    static public $category_image_dir = '/storage/images/categories/';
    
    /**
     * Get category list.
     *
     * @return array
     */
    static public function getCategoriesList($page)
    {
        $result = array();//result var init
        $items_count = Category::count();//gettin categories count
        $pages_count = intval($items_count/Self::$items_per_page);//calc pages count
        if ($items_count > $pages_count * Self::$items_per_page)
        {
            $pages_count++;
        }
        //getting category list for current page
        $result['categories']['list'] = 
            Category
                ::skip(Self::$items_per_page * $page - Self::$items_per_page)
                ->take(Self::$items_per_page)
                ->with(array(
                    'parentCategory' => function($query)
                    {
                        $query->select('id','name');
                    })
                )
                ->get(array('id','name','url','parent_id'))
                ->toArray();
        //storing pagination params
        $result['categories']['pagination']['page_count'] = $pages_count;
        $result['categories']['pagination']['page'] = $page;
        return $result;
    }
    
    /**
     * Get first level (parent_id = 0) category list.
     *
     * @return array
     */
    static public function getFirstLevelCategories($category_id = 0)
    {
        //$category_id needs to prevent attach parent category this category, neede when editing existing one
        $result['first_level_categories'] = Category::where('parent_id',0)->where('id','!=',$category_id)->get()->toArray();
        return $result;
    }
    
    /**
     * Saving category.
     *
     * @return integer
     */
    static public function saveCategory($category_data)
    {
        //generating url if it's not exists
        $insert_array = array('name' => $category_data['category_name'], 'parent_id' => $category_data['category_parent_id']);
        if (!isset($category_data['category_url']) || $category_data['category_url'] == '')
        {
            $category_data['category_url'] = URLify::filter($category_data['category_name']);
        }
        else//transforming given string to url to prevent errors
        {
            $category_data['category_url'] = URLify::filter($category_data['category_url']);
        }
        $insert_array = array_merge($insert_array, array('url' => $category_data['category_url']));
        if (isset($category_data['category_description']))
        {
            $insert_array = array_merge($insert_array, array('description' => $category_data['category_description']));
        }
        if (isset($category_data['category_meta_title']))
        {
            $insert_array = array_merge($insert_array, array('meta_title' => $category_data['category_meta_title']));
        }
        if (isset($category_data['category_meta_description']))
        {
            $insert_array = array_merge($insert_array, array('meta_description' => $category_data['category_meta_description']));
        }
        if (isset($category_data['category_meta_keywords']))
        {
            $insert_array = array_merge($insert_array, array('meta_keywords' => $category_data['category_meta_keywords']));
        }
        $destination_path = public_path().Self::$category_image_dir;
        if (Input::hasFile('category_image'))
        {
            $filename = str_random(16).'.'.Input::file('category_image')->getClientOriginalExtension();
            Input::file('category_image')->move($destination_path,$filename);
            $old_filename = Category::where('id',$category_data['category_id'])->pluck('image_filename');
            $old_file_path = $destination_path.$old_filename;
            if (is_file($old_file_path))
            {
                unlink($old_file_path);
            }
            $insert_array = array_merge($insert_array, array('image_filename' => $filename));
        }
        if (isset($category_data['category_id']) && $category_data['category_id'] != 0)
        {
            //deleting old image if exists
            Category::where('id',$category_data['category_id'])->update($insert_array);
            $result = $category_data['category_id'];
        }
        else
        {
            $result = Category::insertGetId($insert_array);
        }
        return $result;
    }
   
    /**
     * Get category data
     *
     * @return array
     */
    static public function getCategory($category_id)
    {
        $result['category'] = array();
        $res = Category::where('id',$category_id)->get()->toArray();
        if (!empty($res))
        {
            $result['category'] = $res[0];
        }
        return $result;
    }
    
    /**
     * Delete category data
     *
     * @return integer
     */
    static public function deleteCategory($category_id)
    {
        Category::where('id',$category_id)->delete();
        return $category_id;
    }
    
}

