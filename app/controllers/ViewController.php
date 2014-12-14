<?php

class ViewController extends Controller {

    /**
     * Setup the layout used by the controller.
     *
     * @return Illuminate\View\View
     */
    static public function displayPage($basic_view_data,$content_view,$content_view_data)
    {
        return View::make('layout', $basic_view_data)->nest('main', $content_view, $content_view_data);
    }

}
