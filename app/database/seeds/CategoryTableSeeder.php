<?php

class CategoryTableSeeder extends Seeder 
{
    
    public function run()
    {
        DB::table('categories')->truncate();
        $insert_array = array();
        for($i = 1; $i <= 100; $i++)
        {
            $insert_array[] = array(
                'name' => 'category_name_'.$i,
                'url' => 'category_url_'.$i,
                'image_filename' => 'Penguins.jpg',
                'description' => 'category description '.$i,
                'meta_title' => 'category meta title '.$i,
                'meta_description' => 'category meta description '.$i,
                'meta_keywords' => 'category meta  keywords '.$i
            );
        }
        DB::table('categories')->insert($insert_array);
    }
    
}
